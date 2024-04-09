; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95682 () Bool)

(assert start!95682)

(declare-fun b_free!22299 () Bool)

(declare-fun b_next!22299 () Bool)

(assert (=> start!95682 (= b_free!22299 (not b_next!22299))))

(declare-fun tp!78746 () Bool)

(declare-fun b_and!35295 () Bool)

(assert (=> start!95682 (= tp!78746 b_and!35295)))

(declare-fun b!1080847 () Bool)

(declare-fun res!720494 () Bool)

(declare-fun e!617883 () Bool)

(assert (=> b!1080847 (=> (not res!720494) (not e!617883))))

(declare-datatypes ((array!69508 0))(
  ( (array!69509 (arr!33424 (Array (_ BitVec 32) (_ BitVec 64))) (size!33961 (_ BitVec 32))) )
))
(declare-fun lt!479110 () array!69508)

(declare-datatypes ((List!23425 0))(
  ( (Nil!23422) (Cons!23421 (h!24630 (_ BitVec 64)) (t!32791 List!23425)) )
))
(declare-fun arrayNoDuplicates!0 (array!69508 (_ BitVec 32) List!23425) Bool)

(assert (=> b!1080847 (= res!720494 (arrayNoDuplicates!0 lt!479110 #b00000000000000000000000000000000 Nil!23422))))

(declare-fun mapNonEmpty!41206 () Bool)

(declare-fun mapRes!41206 () Bool)

(declare-fun tp!78747 () Bool)

(declare-fun e!617886 () Bool)

(assert (=> mapNonEmpty!41206 (= mapRes!41206 (and tp!78747 e!617886))))

(declare-datatypes ((V!40195 0))(
  ( (V!40196 (val!13207 Int)) )
))
(declare-datatypes ((ValueCell!12441 0))(
  ( (ValueCellFull!12441 (v!15829 V!40195)) (EmptyCell!12441) )
))
(declare-fun mapRest!41206 () (Array (_ BitVec 32) ValueCell!12441))

(declare-datatypes ((array!69510 0))(
  ( (array!69511 (arr!33425 (Array (_ BitVec 32) ValueCell!12441)) (size!33962 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69510)

(declare-fun mapKey!41206 () (_ BitVec 32))

(declare-fun mapValue!41206 () ValueCell!12441)

(assert (=> mapNonEmpty!41206 (= (arr!33425 _values!874) (store mapRest!41206 mapKey!41206 mapValue!41206))))

(declare-fun b!1080849 () Bool)

(declare-fun res!720498 () Bool)

(declare-fun e!617887 () Bool)

(assert (=> b!1080849 (=> (not res!720498) (not e!617887))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69508)

(assert (=> b!1080849 (= res!720498 (and (= (size!33962 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33961 _keys!1070) (size!33962 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080850 () Bool)

(declare-fun res!720500 () Bool)

(assert (=> b!1080850 (=> (not res!720500) (not e!617887))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080850 (= res!720500 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33961 _keys!1070))))))

(declare-fun b!1080851 () Bool)

(assert (=> b!1080851 (= e!617883 (not (bvsle #b00000000000000000000000000000000 (size!33961 _keys!1070))))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40195)

(declare-fun zeroValue!831 () V!40195)

(declare-datatypes ((tuple2!16800 0))(
  ( (tuple2!16801 (_1!8410 (_ BitVec 64)) (_2!8410 V!40195)) )
))
(declare-datatypes ((List!23426 0))(
  ( (Nil!23423) (Cons!23422 (h!24631 tuple2!16800) (t!32792 List!23426)) )
))
(declare-datatypes ((ListLongMap!14781 0))(
  ( (ListLongMap!14782 (toList!7406 List!23426)) )
))
(declare-fun lt!479109 () ListLongMap!14781)

(declare-fun getCurrentListMapNoExtraKeys!3917 (array!69508 array!69510 (_ BitVec 32) (_ BitVec 32) V!40195 V!40195 (_ BitVec 32) Int) ListLongMap!14781)

(assert (=> b!1080851 (= lt!479109 (getCurrentListMapNoExtraKeys!3917 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080851 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35491 0))(
  ( (Unit!35492) )
))
(declare-fun lt!479111 () Unit!35491)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69508 (_ BitVec 64) (_ BitVec 32)) Unit!35491)

(assert (=> b!1080851 (= lt!479111 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1080852 () Bool)

(declare-fun res!720497 () Bool)

(assert (=> b!1080852 (=> (not res!720497) (not e!617887))))

(assert (=> b!1080852 (= res!720497 (= (select (arr!33424 _keys!1070) i!650) k0!904))))

(declare-fun b!1080853 () Bool)

(declare-fun e!617885 () Bool)

(declare-fun e!617882 () Bool)

(assert (=> b!1080853 (= e!617885 (and e!617882 mapRes!41206))))

(declare-fun condMapEmpty!41206 () Bool)

(declare-fun mapDefault!41206 () ValueCell!12441)

(assert (=> b!1080853 (= condMapEmpty!41206 (= (arr!33425 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12441)) mapDefault!41206)))))

(declare-fun b!1080854 () Bool)

(declare-fun res!720492 () Bool)

(assert (=> b!1080854 (=> (not res!720492) (not e!617887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69508 (_ BitVec 32)) Bool)

(assert (=> b!1080854 (= res!720492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080855 () Bool)

(declare-fun res!720493 () Bool)

(assert (=> b!1080855 (=> (not res!720493) (not e!617887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080855 (= res!720493 (validKeyInArray!0 k0!904))))

(declare-fun b!1080856 () Bool)

(assert (=> b!1080856 (= e!617887 e!617883)))

(declare-fun res!720496 () Bool)

(assert (=> b!1080856 (=> (not res!720496) (not e!617883))))

(assert (=> b!1080856 (= res!720496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479110 mask!1414))))

(assert (=> b!1080856 (= lt!479110 (array!69509 (store (arr!33424 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33961 _keys!1070)))))

(declare-fun b!1080857 () Bool)

(declare-fun tp_is_empty!26301 () Bool)

(assert (=> b!1080857 (= e!617886 tp_is_empty!26301)))

(declare-fun res!720495 () Bool)

(assert (=> start!95682 (=> (not res!720495) (not e!617887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95682 (= res!720495 (validMask!0 mask!1414))))

(assert (=> start!95682 e!617887))

(assert (=> start!95682 tp!78746))

(assert (=> start!95682 true))

(assert (=> start!95682 tp_is_empty!26301))

(declare-fun array_inv!25668 (array!69508) Bool)

(assert (=> start!95682 (array_inv!25668 _keys!1070)))

(declare-fun array_inv!25669 (array!69510) Bool)

(assert (=> start!95682 (and (array_inv!25669 _values!874) e!617885)))

(declare-fun b!1080848 () Bool)

(declare-fun res!720499 () Bool)

(assert (=> b!1080848 (=> (not res!720499) (not e!617887))))

(assert (=> b!1080848 (= res!720499 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23422))))

(declare-fun mapIsEmpty!41206 () Bool)

(assert (=> mapIsEmpty!41206 mapRes!41206))

(declare-fun b!1080858 () Bool)

(assert (=> b!1080858 (= e!617882 tp_is_empty!26301)))

(assert (= (and start!95682 res!720495) b!1080849))

(assert (= (and b!1080849 res!720498) b!1080854))

(assert (= (and b!1080854 res!720492) b!1080848))

(assert (= (and b!1080848 res!720499) b!1080850))

(assert (= (and b!1080850 res!720500) b!1080855))

(assert (= (and b!1080855 res!720493) b!1080852))

(assert (= (and b!1080852 res!720497) b!1080856))

(assert (= (and b!1080856 res!720496) b!1080847))

(assert (= (and b!1080847 res!720494) b!1080851))

(assert (= (and b!1080853 condMapEmpty!41206) mapIsEmpty!41206))

(assert (= (and b!1080853 (not condMapEmpty!41206)) mapNonEmpty!41206))

(get-info :version)

(assert (= (and mapNonEmpty!41206 ((_ is ValueCellFull!12441) mapValue!41206)) b!1080857))

(assert (= (and b!1080853 ((_ is ValueCellFull!12441) mapDefault!41206)) b!1080858))

(assert (= start!95682 b!1080853))

(declare-fun m!998839 () Bool)

(assert (=> b!1080847 m!998839))

(declare-fun m!998841 () Bool)

(assert (=> b!1080848 m!998841))

(declare-fun m!998843 () Bool)

(assert (=> mapNonEmpty!41206 m!998843))

(declare-fun m!998845 () Bool)

(assert (=> b!1080856 m!998845))

(declare-fun m!998847 () Bool)

(assert (=> b!1080856 m!998847))

(declare-fun m!998849 () Bool)

(assert (=> b!1080855 m!998849))

(declare-fun m!998851 () Bool)

(assert (=> start!95682 m!998851))

(declare-fun m!998853 () Bool)

(assert (=> start!95682 m!998853))

(declare-fun m!998855 () Bool)

(assert (=> start!95682 m!998855))

(declare-fun m!998857 () Bool)

(assert (=> b!1080851 m!998857))

(declare-fun m!998859 () Bool)

(assert (=> b!1080851 m!998859))

(declare-fun m!998861 () Bool)

(assert (=> b!1080851 m!998861))

(declare-fun m!998863 () Bool)

(assert (=> b!1080852 m!998863))

(declare-fun m!998865 () Bool)

(assert (=> b!1080854 m!998865))

(check-sat b_and!35295 (not b!1080847) (not b!1080856) (not b!1080855) (not b_next!22299) tp_is_empty!26301 (not b!1080848) (not b!1080851) (not mapNonEmpty!41206) (not start!95682) (not b!1080854))
(check-sat b_and!35295 (not b_next!22299))
