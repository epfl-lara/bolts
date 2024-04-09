; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81876 () Bool)

(assert start!81876)

(declare-fun b_free!18343 () Bool)

(declare-fun b_next!18343 () Bool)

(assert (=> start!81876 (= b_free!18343 (not b_next!18343))))

(declare-fun tp!63730 () Bool)

(declare-fun b_and!29847 () Bool)

(assert (=> start!81876 (= tp!63730 b_and!29847)))

(declare-fun b!954358 () Bool)

(declare-fun e!537709 () Bool)

(declare-fun tp_is_empty!20887 () Bool)

(assert (=> b!954358 (= e!537709 tp_is_empty!20887)))

(declare-fun b!954359 () Bool)

(declare-fun e!537707 () Bool)

(assert (=> b!954359 (= e!537707 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32833 0))(
  ( (V!32834 (val!10494 Int)) )
))
(declare-fun zeroValue!1139 () V!32833)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57899 0))(
  ( (array!57900 (arr!27825 (Array (_ BitVec 32) (_ BitVec 64))) (size!28305 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57899)

(declare-datatypes ((ValueCell!9962 0))(
  ( (ValueCellFull!9962 (v!13049 V!32833)) (EmptyCell!9962) )
))
(declare-datatypes ((array!57901 0))(
  ( (array!57902 (arr!27826 (Array (_ BitVec 32) ValueCell!9962)) (size!28306 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57901)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun lt!429853 () Bool)

(declare-fun minValue!1139 () V!32833)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13716 0))(
  ( (tuple2!13717 (_1!6868 (_ BitVec 64)) (_2!6868 V!32833)) )
))
(declare-datatypes ((List!19533 0))(
  ( (Nil!19530) (Cons!19529 (h!20691 tuple2!13716) (t!27902 List!19533)) )
))
(declare-datatypes ((ListLongMap!12427 0))(
  ( (ListLongMap!12428 (toList!6229 List!19533)) )
))
(declare-fun contains!5279 (ListLongMap!12427 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3414 (array!57899 array!57901 (_ BitVec 32) (_ BitVec 32) V!32833 V!32833 (_ BitVec 32) Int) ListLongMap!12427)

(assert (=> b!954359 (= lt!429853 (contains!5279 (getCurrentListMap!3414 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27825 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33292 () Bool)

(declare-fun mapRes!33292 () Bool)

(declare-fun tp!63729 () Bool)

(assert (=> mapNonEmpty!33292 (= mapRes!33292 (and tp!63729 e!537709))))

(declare-fun mapKey!33292 () (_ BitVec 32))

(declare-fun mapRest!33292 () (Array (_ BitVec 32) ValueCell!9962))

(declare-fun mapValue!33292 () ValueCell!9962)

(assert (=> mapNonEmpty!33292 (= (arr!27826 _values!1197) (store mapRest!33292 mapKey!33292 mapValue!33292))))

(declare-fun b!954360 () Bool)

(declare-fun res!639194 () Bool)

(assert (=> b!954360 (=> (not res!639194) (not e!537707))))

(assert (=> b!954360 (= res!639194 (and (= (size!28306 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28305 _keys!1441) (size!28306 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954361 () Bool)

(declare-fun res!639197 () Bool)

(assert (=> b!954361 (=> (not res!639197) (not e!537707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954361 (= res!639197 (validKeyInArray!0 (select (arr!27825 _keys!1441) i!735)))))

(declare-fun b!954362 () Bool)

(declare-fun e!537711 () Bool)

(assert (=> b!954362 (= e!537711 tp_is_empty!20887)))

(declare-fun b!954363 () Bool)

(declare-fun res!639195 () Bool)

(assert (=> b!954363 (=> (not res!639195) (not e!537707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57899 (_ BitVec 32)) Bool)

(assert (=> b!954363 (= res!639195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33292 () Bool)

(assert (=> mapIsEmpty!33292 mapRes!33292))

(declare-fun b!954364 () Bool)

(declare-fun res!639199 () Bool)

(assert (=> b!954364 (=> (not res!639199) (not e!537707))))

(declare-datatypes ((List!19534 0))(
  ( (Nil!19531) (Cons!19530 (h!20692 (_ BitVec 64)) (t!27903 List!19534)) )
))
(declare-fun arrayNoDuplicates!0 (array!57899 (_ BitVec 32) List!19534) Bool)

(assert (=> b!954364 (= res!639199 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19531))))

(declare-fun res!639196 () Bool)

(assert (=> start!81876 (=> (not res!639196) (not e!537707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81876 (= res!639196 (validMask!0 mask!1823))))

(assert (=> start!81876 e!537707))

(assert (=> start!81876 true))

(assert (=> start!81876 tp_is_empty!20887))

(declare-fun array_inv!21543 (array!57899) Bool)

(assert (=> start!81876 (array_inv!21543 _keys!1441)))

(declare-fun e!537710 () Bool)

(declare-fun array_inv!21544 (array!57901) Bool)

(assert (=> start!81876 (and (array_inv!21544 _values!1197) e!537710)))

(assert (=> start!81876 tp!63730))

(declare-fun b!954365 () Bool)

(declare-fun res!639198 () Bool)

(assert (=> b!954365 (=> (not res!639198) (not e!537707))))

(assert (=> b!954365 (= res!639198 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28305 _keys!1441))))))

(declare-fun b!954366 () Bool)

(assert (=> b!954366 (= e!537710 (and e!537711 mapRes!33292))))

(declare-fun condMapEmpty!33292 () Bool)

(declare-fun mapDefault!33292 () ValueCell!9962)

