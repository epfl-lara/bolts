; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81948 () Bool)

(assert start!81948)

(declare-fun b_free!18415 () Bool)

(declare-fun b_next!18415 () Bool)

(assert (=> start!81948 (= b_free!18415 (not b_next!18415))))

(declare-fun tp!63946 () Bool)

(declare-fun b_and!29919 () Bool)

(assert (=> start!81948 (= tp!63946 b_and!29919)))

(declare-fun b!955377 () Bool)

(declare-fun res!639889 () Bool)

(declare-fun e!538249 () Bool)

(assert (=> b!955377 (=> (not res!639889) (not e!538249))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58043 0))(
  ( (array!58044 (arr!27897 (Array (_ BitVec 32) (_ BitVec 64))) (size!28377 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58043)

(declare-datatypes ((V!32929 0))(
  ( (V!32930 (val!10530 Int)) )
))
(declare-datatypes ((ValueCell!9998 0))(
  ( (ValueCellFull!9998 (v!13085 V!32929)) (EmptyCell!9998) )
))
(declare-datatypes ((array!58045 0))(
  ( (array!58046 (arr!27898 (Array (_ BitVec 32) ValueCell!9998)) (size!28378 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58045)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32929)

(declare-fun minValue!1139 () V!32929)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13766 0))(
  ( (tuple2!13767 (_1!6893 (_ BitVec 64)) (_2!6893 V!32929)) )
))
(declare-datatypes ((List!19584 0))(
  ( (Nil!19581) (Cons!19580 (h!20742 tuple2!13766) (t!27953 List!19584)) )
))
(declare-datatypes ((ListLongMap!12477 0))(
  ( (ListLongMap!12478 (toList!6254 List!19584)) )
))
(declare-fun contains!5304 (ListLongMap!12477 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3439 (array!58043 array!58045 (_ BitVec 32) (_ BitVec 32) V!32929 V!32929 (_ BitVec 32) Int) ListLongMap!12477)

(assert (=> b!955377 (= res!639889 (contains!5304 (getCurrentListMap!3439 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27897 _keys!1441) i!735)))))

(declare-fun b!955378 () Bool)

(declare-fun res!639894 () Bool)

(assert (=> b!955378 (=> (not res!639894) (not e!538249))))

(assert (=> b!955378 (= res!639894 (and (= (size!28378 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28377 _keys!1441) (size!28378 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!639891 () Bool)

(assert (=> start!81948 (=> (not res!639891) (not e!538249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81948 (= res!639891 (validMask!0 mask!1823))))

(assert (=> start!81948 e!538249))

(assert (=> start!81948 true))

(declare-fun tp_is_empty!20959 () Bool)

(assert (=> start!81948 tp_is_empty!20959))

(declare-fun array_inv!21599 (array!58043) Bool)

(assert (=> start!81948 (array_inv!21599 _keys!1441)))

(declare-fun e!538250 () Bool)

(declare-fun array_inv!21600 (array!58045) Bool)

(assert (=> start!81948 (and (array_inv!21600 _values!1197) e!538250)))

(assert (=> start!81948 tp!63946))

(declare-fun b!955379 () Bool)

(declare-fun res!639890 () Bool)

(assert (=> b!955379 (=> (not res!639890) (not e!538249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58043 (_ BitVec 32)) Bool)

(assert (=> b!955379 (= res!639890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33400 () Bool)

(declare-fun mapRes!33400 () Bool)

(assert (=> mapIsEmpty!33400 mapRes!33400))

(declare-fun mapNonEmpty!33400 () Bool)

(declare-fun tp!63945 () Bool)

(declare-fun e!538247 () Bool)

(assert (=> mapNonEmpty!33400 (= mapRes!33400 (and tp!63945 e!538247))))

(declare-fun mapKey!33400 () (_ BitVec 32))

(declare-fun mapValue!33400 () ValueCell!9998)

(declare-fun mapRest!33400 () (Array (_ BitVec 32) ValueCell!9998))

(assert (=> mapNonEmpty!33400 (= (arr!27898 _values!1197) (store mapRest!33400 mapKey!33400 mapValue!33400))))

(declare-fun b!955380 () Bool)

(declare-fun e!538248 () Bool)

(assert (=> b!955380 (= e!538248 tp_is_empty!20959)))

(declare-fun b!955381 () Bool)

(assert (=> b!955381 (= e!538249 (not true))))

(assert (=> b!955381 (contains!5304 (getCurrentListMap!3439 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27897 _keys!1441) i!735))))

(declare-datatypes ((Unit!32109 0))(
  ( (Unit!32110) )
))
(declare-fun lt!429961 () Unit!32109)

(declare-fun lemmaInListMapFromThenFromZero!11 (array!58043 array!58045 (_ BitVec 32) (_ BitVec 32) V!32929 V!32929 (_ BitVec 32) (_ BitVec 32) Int) Unit!32109)

(assert (=> b!955381 (= lt!429961 (lemmaInListMapFromThenFromZero!11 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955382 () Bool)

(assert (=> b!955382 (= e!538247 tp_is_empty!20959)))

(declare-fun b!955383 () Bool)

(declare-fun res!639892 () Bool)

(assert (=> b!955383 (=> (not res!639892) (not e!538249))))

(assert (=> b!955383 (= res!639892 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28377 _keys!1441))))))

(declare-fun b!955384 () Bool)

(assert (=> b!955384 (= e!538250 (and e!538248 mapRes!33400))))

(declare-fun condMapEmpty!33400 () Bool)

(declare-fun mapDefault!33400 () ValueCell!9998)

