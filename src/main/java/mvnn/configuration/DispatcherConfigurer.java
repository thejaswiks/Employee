package mvnn.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import mvnn.configuration.MyConfig;

public class DispatcherConfigurer extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] a= {MyConfig.class};
		return a;
	}

	@Override
	protected String[] getServletMappings() {
		String[] b={"/"};
		return b;
	}

}
