; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20616 () Bool)

(assert start!20616)

(declare-fun b_free!5263 () Bool)

(declare-fun b_next!5263 () Bool)

(assert (=> start!20616 (= b_free!5263 (not b_next!5263))))

(declare-fun tp!18820 () Bool)

(declare-fun b_and!12027 () Bool)

(assert (=> start!20616 (= tp!18820 b_and!12027)))

(declare-fun b!205336 () Bool)

(declare-fun e!134293 () Bool)

(declare-fun e!134295 () Bool)

(assert (=> b!205336 (= e!134293 (not e!134295))))

(declare-fun res!99210 () Bool)

(assert (=> b!205336 (=> res!99210 e!134295)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205336 (= res!99210 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6473 0))(
  ( (V!6474 (val!2604 Int)) )
))
(declare-datatypes ((ValueCell!2216 0))(
  ( (ValueCellFull!2216 (v!4570 V!6473)) (EmptyCell!2216) )
))
(declare-datatypes ((array!9450 0))(
  ( (array!9451 (arr!4475 (Array (_ BitVec 32) ValueCell!2216)) (size!4800 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9450)

(declare-datatypes ((tuple2!3946 0))(
  ( (tuple2!3947 (_1!1983 (_ BitVec 64)) (_2!1983 V!6473)) )
))
(declare-datatypes ((List!2868 0))(
  ( (Nil!2865) (Cons!2864 (h!3506 tuple2!3946) (t!7807 List!2868)) )
))
(declare-datatypes ((ListLongMap!2873 0))(
  ( (ListLongMap!2874 (toList!1452 List!2868)) )
))
(declare-fun lt!104534 () ListLongMap!2873)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((array!9452 0))(
  ( (array!9453 (arr!4476 (Array (_ BitVec 32) (_ BitVec 64))) (size!4801 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9452)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6473)

(declare-fun zeroValue!615 () V!6473)

(declare-fun getCurrentListMap!1018 (array!9452 array!9450 (_ BitVec 32) (_ BitVec 32) V!6473 V!6473 (_ BitVec 32) Int) ListLongMap!2873)

(assert (=> b!205336 (= lt!104534 (getCurrentListMap!1018 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104535 () ListLongMap!2873)

(declare-fun lt!104540 () array!9450)

(assert (=> b!205336 (= lt!104535 (getCurrentListMap!1018 _keys!825 lt!104540 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104536 () ListLongMap!2873)

(declare-fun lt!104539 () ListLongMap!2873)

(assert (=> b!205336 (and (= lt!104536 lt!104539) (= lt!104539 lt!104536))))

(declare-fun lt!104545 () ListLongMap!2873)

(declare-fun lt!104543 () tuple2!3946)

(declare-fun +!469 (ListLongMap!2873 tuple2!3946) ListLongMap!2873)

(assert (=> b!205336 (= lt!104539 (+!469 lt!104545 lt!104543))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6473)

(assert (=> b!205336 (= lt!104543 (tuple2!3947 k!843 v!520))))

(declare-datatypes ((Unit!6237 0))(
  ( (Unit!6238) )
))
(declare-fun lt!104537 () Unit!6237)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!131 (array!9452 array!9450 (_ BitVec 32) (_ BitVec 32) V!6473 V!6473 (_ BitVec 32) (_ BitVec 64) V!6473 (_ BitVec 32) Int) Unit!6237)

(assert (=> b!205336 (= lt!104537 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!131 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!389 (array!9452 array!9450 (_ BitVec 32) (_ BitVec 32) V!6473 V!6473 (_ BitVec 32) Int) ListLongMap!2873)

(assert (=> b!205336 (= lt!104536 (getCurrentListMapNoExtraKeys!389 _keys!825 lt!104540 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205336 (= lt!104540 (array!9451 (store (arr!4475 _values!649) i!601 (ValueCellFull!2216 v!520)) (size!4800 _values!649)))))

(assert (=> b!205336 (= lt!104545 (getCurrentListMapNoExtraKeys!389 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205337 () Bool)

(declare-fun res!99211 () Bool)

(assert (=> b!205337 (=> (not res!99211) (not e!134293))))

(assert (=> b!205337 (= res!99211 (= (select (arr!4476 _keys!825) i!601) k!843))))

(declare-fun b!205338 () Bool)

(declare-fun res!99209 () Bool)

(assert (=> b!205338 (=> (not res!99209) (not e!134293))))

(assert (=> b!205338 (= res!99209 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4801 _keys!825))))))

(declare-fun mapNonEmpty!8747 () Bool)

(declare-fun mapRes!8747 () Bool)

(declare-fun tp!18821 () Bool)

(declare-fun e!134294 () Bool)

(assert (=> mapNonEmpty!8747 (= mapRes!8747 (and tp!18821 e!134294))))

(declare-fun mapRest!8747 () (Array (_ BitVec 32) ValueCell!2216))

(declare-fun mapValue!8747 () ValueCell!2216)

(declare-fun mapKey!8747 () (_ BitVec 32))

(assert (=> mapNonEmpty!8747 (= (arr!4475 _values!649) (store mapRest!8747 mapKey!8747 mapValue!8747))))

(declare-fun res!99212 () Bool)

(assert (=> start!20616 (=> (not res!99212) (not e!134293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20616 (= res!99212 (validMask!0 mask!1149))))

(assert (=> start!20616 e!134293))

(declare-fun e!134290 () Bool)

(declare-fun array_inv!2949 (array!9450) Bool)

(assert (=> start!20616 (and (array_inv!2949 _values!649) e!134290)))

(assert (=> start!20616 true))

(declare-fun tp_is_empty!5119 () Bool)

(assert (=> start!20616 tp_is_empty!5119))

(declare-fun array_inv!2950 (array!9452) Bool)

(assert (=> start!20616 (array_inv!2950 _keys!825)))

(assert (=> start!20616 tp!18820))

(declare-fun b!205339 () Bool)

(declare-fun res!99213 () Bool)

(assert (=> b!205339 (=> (not res!99213) (not e!134293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205339 (= res!99213 (validKeyInArray!0 k!843))))

(declare-fun b!205340 () Bool)

(declare-fun e!134296 () Bool)

(assert (=> b!205340 (= e!134296 tp_is_empty!5119)))

(declare-fun b!205341 () Bool)

(declare-fun res!99206 () Bool)

(assert (=> b!205341 (=> (not res!99206) (not e!134293))))

(assert (=> b!205341 (= res!99206 (and (= (size!4800 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4801 _keys!825) (size!4800 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205342 () Bool)

(declare-fun res!99214 () Bool)

(assert (=> b!205342 (=> (not res!99214) (not e!134293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9452 (_ BitVec 32)) Bool)

(assert (=> b!205342 (= res!99214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205343 () Bool)

(assert (=> b!205343 (= e!134290 (and e!134296 mapRes!8747))))

(declare-fun condMapEmpty!8747 () Bool)

(declare-fun mapDefault!8747 () ValueCell!2216)

