; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81860 () Bool)

(assert start!81860)

(declare-fun b_free!18327 () Bool)

(declare-fun b_next!18327 () Bool)

(assert (=> start!81860 (= b_free!18327 (not b_next!18327))))

(declare-fun tp!63682 () Bool)

(declare-fun b_and!29831 () Bool)

(assert (=> start!81860 (= tp!63682 b_and!29831)))

(declare-fun b!954142 () Bool)

(declare-fun res!639050 () Bool)

(declare-fun e!537590 () Bool)

(assert (=> b!954142 (=> (not res!639050) (not e!537590))))

(declare-datatypes ((array!57869 0))(
  ( (array!57870 (arr!27810 (Array (_ BitVec 32) (_ BitVec 64))) (size!28290 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57869)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954142 (= res!639050 (validKeyInArray!0 (select (arr!27810 _keys!1441) i!735)))))

(declare-fun b!954143 () Bool)

(declare-fun res!639055 () Bool)

(assert (=> b!954143 (=> (not res!639055) (not e!537590))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57869 (_ BitVec 32)) Bool)

(assert (=> b!954143 (= res!639055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954144 () Bool)

(declare-fun res!639053 () Bool)

(assert (=> b!954144 (=> (not res!639053) (not e!537590))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32811 0))(
  ( (V!32812 (val!10486 Int)) )
))
(declare-datatypes ((ValueCell!9954 0))(
  ( (ValueCellFull!9954 (v!13041 V!32811)) (EmptyCell!9954) )
))
(declare-datatypes ((array!57871 0))(
  ( (array!57872 (arr!27811 (Array (_ BitVec 32) ValueCell!9954)) (size!28291 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57871)

(assert (=> b!954144 (= res!639053 (and (= (size!28291 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28290 _keys!1441) (size!28291 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954145 () Bool)

(assert (=> b!954145 (= e!537590 false)))

(declare-fun lt!429829 () Bool)

(declare-fun zeroValue!1139 () V!32811)

(declare-fun minValue!1139 () V!32811)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13706 0))(
  ( (tuple2!13707 (_1!6863 (_ BitVec 64)) (_2!6863 V!32811)) )
))
(declare-datatypes ((List!19523 0))(
  ( (Nil!19520) (Cons!19519 (h!20681 tuple2!13706) (t!27892 List!19523)) )
))
(declare-datatypes ((ListLongMap!12417 0))(
  ( (ListLongMap!12418 (toList!6224 List!19523)) )
))
(declare-fun contains!5274 (ListLongMap!12417 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3409 (array!57869 array!57871 (_ BitVec 32) (_ BitVec 32) V!32811 V!32811 (_ BitVec 32) Int) ListLongMap!12417)

(assert (=> b!954145 (= lt!429829 (contains!5274 (getCurrentListMap!3409 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27810 _keys!1441) i!735)))))

(declare-fun res!639054 () Bool)

(assert (=> start!81860 (=> (not res!639054) (not e!537590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81860 (= res!639054 (validMask!0 mask!1823))))

(assert (=> start!81860 e!537590))

(assert (=> start!81860 true))

(declare-fun tp_is_empty!20871 () Bool)

(assert (=> start!81860 tp_is_empty!20871))

(declare-fun array_inv!21533 (array!57869) Bool)

(assert (=> start!81860 (array_inv!21533 _keys!1441)))

(declare-fun e!537591 () Bool)

(declare-fun array_inv!21534 (array!57871) Bool)

(assert (=> start!81860 (and (array_inv!21534 _values!1197) e!537591)))

(assert (=> start!81860 tp!63682))

(declare-fun mapNonEmpty!33268 () Bool)

(declare-fun mapRes!33268 () Bool)

(declare-fun tp!63681 () Bool)

(declare-fun e!537589 () Bool)

(assert (=> mapNonEmpty!33268 (= mapRes!33268 (and tp!63681 e!537589))))

(declare-fun mapKey!33268 () (_ BitVec 32))

(declare-fun mapRest!33268 () (Array (_ BitVec 32) ValueCell!9954))

(declare-fun mapValue!33268 () ValueCell!9954)

(assert (=> mapNonEmpty!33268 (= (arr!27811 _values!1197) (store mapRest!33268 mapKey!33268 mapValue!33268))))

(declare-fun b!954146 () Bool)

(declare-fun e!537588 () Bool)

(assert (=> b!954146 (= e!537588 tp_is_empty!20871)))

(declare-fun b!954147 () Bool)

(assert (=> b!954147 (= e!537591 (and e!537588 mapRes!33268))))

(declare-fun condMapEmpty!33268 () Bool)

(declare-fun mapDefault!33268 () ValueCell!9954)

(assert (=> b!954147 (= condMapEmpty!33268 (= (arr!27811 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9954)) mapDefault!33268)))))

(declare-fun b!954148 () Bool)

(declare-fun res!639051 () Bool)

(assert (=> b!954148 (=> (not res!639051) (not e!537590))))

(assert (=> b!954148 (= res!639051 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28290 _keys!1441))))))

(declare-fun mapIsEmpty!33268 () Bool)

(assert (=> mapIsEmpty!33268 mapRes!33268))

(declare-fun b!954149 () Bool)

(assert (=> b!954149 (= e!537589 tp_is_empty!20871)))

(declare-fun b!954150 () Bool)

(declare-fun res!639052 () Bool)

(assert (=> b!954150 (=> (not res!639052) (not e!537590))))

(declare-datatypes ((List!19524 0))(
  ( (Nil!19521) (Cons!19520 (h!20682 (_ BitVec 64)) (t!27893 List!19524)) )
))
(declare-fun arrayNoDuplicates!0 (array!57869 (_ BitVec 32) List!19524) Bool)

(assert (=> b!954150 (= res!639052 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19521))))

(assert (= (and start!81860 res!639054) b!954144))

(assert (= (and b!954144 res!639053) b!954143))

(assert (= (and b!954143 res!639055) b!954150))

(assert (= (and b!954150 res!639052) b!954148))

(assert (= (and b!954148 res!639051) b!954142))

(assert (= (and b!954142 res!639050) b!954145))

(assert (= (and b!954147 condMapEmpty!33268) mapIsEmpty!33268))

(assert (= (and b!954147 (not condMapEmpty!33268)) mapNonEmpty!33268))

(get-info :version)

(assert (= (and mapNonEmpty!33268 ((_ is ValueCellFull!9954) mapValue!33268)) b!954149))

(assert (= (and b!954147 ((_ is ValueCellFull!9954) mapDefault!33268)) b!954146))

(assert (= start!81860 b!954147))

(declare-fun m!886019 () Bool)

(assert (=> b!954142 m!886019))

(assert (=> b!954142 m!886019))

(declare-fun m!886021 () Bool)

(assert (=> b!954142 m!886021))

(declare-fun m!886023 () Bool)

(assert (=> start!81860 m!886023))

(declare-fun m!886025 () Bool)

(assert (=> start!81860 m!886025))

(declare-fun m!886027 () Bool)

(assert (=> start!81860 m!886027))

(declare-fun m!886029 () Bool)

(assert (=> b!954150 m!886029))

(declare-fun m!886031 () Bool)

(assert (=> b!954145 m!886031))

(assert (=> b!954145 m!886019))

(assert (=> b!954145 m!886031))

(assert (=> b!954145 m!886019))

(declare-fun m!886033 () Bool)

(assert (=> b!954145 m!886033))

(declare-fun m!886035 () Bool)

(assert (=> b!954143 m!886035))

(declare-fun m!886037 () Bool)

(assert (=> mapNonEmpty!33268 m!886037))

(check-sat (not b!954142) (not b!954150) (not mapNonEmpty!33268) (not b!954143) (not b_next!18327) tp_is_empty!20871 (not start!81860) (not b!954145) b_and!29831)
(check-sat b_and!29831 (not b_next!18327))
