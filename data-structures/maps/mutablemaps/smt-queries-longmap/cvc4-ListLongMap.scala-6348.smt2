; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81856 () Bool)

(assert start!81856)

(declare-fun b_free!18323 () Bool)

(declare-fun b_next!18323 () Bool)

(assert (=> start!81856 (= b_free!18323 (not b_next!18323))))

(declare-fun tp!63670 () Bool)

(declare-fun b_and!29827 () Bool)

(assert (=> start!81856 (= tp!63670 b_and!29827)))

(declare-fun res!639016 () Bool)

(declare-fun e!537560 () Bool)

(assert (=> start!81856 (=> (not res!639016) (not e!537560))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81856 (= res!639016 (validMask!0 mask!1823))))

(assert (=> start!81856 e!537560))

(assert (=> start!81856 true))

(declare-fun tp_is_empty!20867 () Bool)

(assert (=> start!81856 tp_is_empty!20867))

(declare-datatypes ((array!57863 0))(
  ( (array!57864 (arr!27807 (Array (_ BitVec 32) (_ BitVec 64))) (size!28287 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57863)

(declare-fun array_inv!21531 (array!57863) Bool)

(assert (=> start!81856 (array_inv!21531 _keys!1441)))

(declare-datatypes ((V!32805 0))(
  ( (V!32806 (val!10484 Int)) )
))
(declare-datatypes ((ValueCell!9952 0))(
  ( (ValueCellFull!9952 (v!13039 V!32805)) (EmptyCell!9952) )
))
(declare-datatypes ((array!57865 0))(
  ( (array!57866 (arr!27808 (Array (_ BitVec 32) ValueCell!9952)) (size!28288 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57865)

(declare-fun e!537558 () Bool)

(declare-fun array_inv!21532 (array!57865) Bool)

(assert (=> start!81856 (and (array_inv!21532 _values!1197) e!537558)))

(assert (=> start!81856 tp!63670))

(declare-fun mapNonEmpty!33262 () Bool)

(declare-fun mapRes!33262 () Bool)

(declare-fun tp!63669 () Bool)

(declare-fun e!537559 () Bool)

(assert (=> mapNonEmpty!33262 (= mapRes!33262 (and tp!63669 e!537559))))

(declare-fun mapRest!33262 () (Array (_ BitVec 32) ValueCell!9952))

(declare-fun mapKey!33262 () (_ BitVec 32))

(declare-fun mapValue!33262 () ValueCell!9952)

(assert (=> mapNonEmpty!33262 (= (arr!27808 _values!1197) (store mapRest!33262 mapKey!33262 mapValue!33262))))

(declare-fun b!954088 () Bool)

(declare-fun res!639015 () Bool)

(assert (=> b!954088 (=> (not res!639015) (not e!537560))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!954088 (= res!639015 (and (= (size!28288 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28287 _keys!1441) (size!28288 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954089 () Bool)

(declare-fun res!639017 () Bool)

(assert (=> b!954089 (=> (not res!639017) (not e!537560))))

(declare-datatypes ((List!19521 0))(
  ( (Nil!19518) (Cons!19517 (h!20679 (_ BitVec 64)) (t!27890 List!19521)) )
))
(declare-fun arrayNoDuplicates!0 (array!57863 (_ BitVec 32) List!19521) Bool)

(assert (=> b!954089 (= res!639017 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19518))))

(declare-fun b!954090 () Bool)

(assert (=> b!954090 (= e!537559 tp_is_empty!20867)))

(declare-fun b!954091 () Bool)

(declare-fun e!537561 () Bool)

(assert (=> b!954091 (= e!537561 tp_is_empty!20867)))

(declare-fun b!954092 () Bool)

(declare-fun res!639019 () Bool)

(assert (=> b!954092 (=> (not res!639019) (not e!537560))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!954092 (= res!639019 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28287 _keys!1441))))))

(declare-fun b!954093 () Bool)

(assert (=> b!954093 (= e!537560 false)))

(declare-fun zeroValue!1139 () V!32805)

(declare-fun lt!429823 () Bool)

(declare-fun minValue!1139 () V!32805)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13704 0))(
  ( (tuple2!13705 (_1!6862 (_ BitVec 64)) (_2!6862 V!32805)) )
))
(declare-datatypes ((List!19522 0))(
  ( (Nil!19519) (Cons!19518 (h!20680 tuple2!13704) (t!27891 List!19522)) )
))
(declare-datatypes ((ListLongMap!12415 0))(
  ( (ListLongMap!12416 (toList!6223 List!19522)) )
))
(declare-fun contains!5273 (ListLongMap!12415 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3408 (array!57863 array!57865 (_ BitVec 32) (_ BitVec 32) V!32805 V!32805 (_ BitVec 32) Int) ListLongMap!12415)

(assert (=> b!954093 (= lt!429823 (contains!5273 (getCurrentListMap!3408 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27807 _keys!1441) i!735)))))

(declare-fun b!954094 () Bool)

(assert (=> b!954094 (= e!537558 (and e!537561 mapRes!33262))))

(declare-fun condMapEmpty!33262 () Bool)

(declare-fun mapDefault!33262 () ValueCell!9952)

