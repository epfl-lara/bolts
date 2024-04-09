; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20636 () Bool)

(assert start!20636)

(declare-fun b_free!5283 () Bool)

(declare-fun b_next!5283 () Bool)

(assert (=> start!20636 (= b_free!5283 (not b_next!5283))))

(declare-fun tp!18880 () Bool)

(declare-fun b_and!12047 () Bool)

(assert (=> start!20636 (= tp!18880 b_and!12047)))

(declare-fun res!99484 () Bool)

(declare-fun e!134506 () Bool)

(assert (=> start!20636 (=> (not res!99484) (not e!134506))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20636 (= res!99484 (validMask!0 mask!1149))))

(assert (=> start!20636 e!134506))

(declare-datatypes ((V!6499 0))(
  ( (V!6500 (val!2614 Int)) )
))
(declare-datatypes ((ValueCell!2226 0))(
  ( (ValueCellFull!2226 (v!4580 V!6499)) (EmptyCell!2226) )
))
(declare-datatypes ((array!9488 0))(
  ( (array!9489 (arr!4494 (Array (_ BitVec 32) ValueCell!2226)) (size!4819 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9488)

(declare-fun e!134504 () Bool)

(declare-fun array_inv!2963 (array!9488) Bool)

(assert (=> start!20636 (and (array_inv!2963 _values!649) e!134504)))

(assert (=> start!20636 true))

(declare-fun tp_is_empty!5139 () Bool)

(assert (=> start!20636 tp_is_empty!5139))

(declare-datatypes ((array!9490 0))(
  ( (array!9491 (arr!4495 (Array (_ BitVec 32) (_ BitVec 64))) (size!4820 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9490)

(declare-fun array_inv!2964 (array!9490) Bool)

(assert (=> start!20636 (array_inv!2964 _keys!825)))

(assert (=> start!20636 tp!18880))

(declare-fun b!205696 () Bool)

(declare-fun e!134505 () Bool)

(declare-fun e!134501 () Bool)

(assert (=> b!205696 (= e!134505 e!134501)))

(declare-fun res!99478 () Bool)

(assert (=> b!205696 (=> res!99478 e!134501)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!205696 (= res!99478 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3962 0))(
  ( (tuple2!3963 (_1!1991 (_ BitVec 64)) (_2!1991 V!6499)) )
))
(declare-datatypes ((List!2881 0))(
  ( (Nil!2878) (Cons!2877 (h!3519 tuple2!3962) (t!7820 List!2881)) )
))
(declare-datatypes ((ListLongMap!2889 0))(
  ( (ListLongMap!2890 (toList!1460 List!2881)) )
))
(declare-fun lt!104905 () ListLongMap!2889)

(declare-fun lt!104904 () ListLongMap!2889)

(assert (=> b!205696 (= lt!104905 lt!104904)))

(declare-fun lt!104896 () ListLongMap!2889)

(declare-fun lt!104894 () tuple2!3962)

(declare-fun +!477 (ListLongMap!2889 tuple2!3962) ListLongMap!2889)

(assert (=> b!205696 (= lt!104904 (+!477 lt!104896 lt!104894))))

(declare-fun lt!104897 () ListLongMap!2889)

(declare-fun lt!104901 () ListLongMap!2889)

(assert (=> b!205696 (= lt!104897 lt!104901)))

(declare-fun lt!104899 () ListLongMap!2889)

(assert (=> b!205696 (= lt!104901 (+!477 lt!104899 lt!104894))))

(declare-fun lt!104902 () ListLongMap!2889)

(assert (=> b!205696 (= lt!104897 (+!477 lt!104902 lt!104894))))

(declare-fun minValue!615 () V!6499)

(assert (=> b!205696 (= lt!104894 (tuple2!3963 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205697 () Bool)

(declare-fun res!99476 () Bool)

(assert (=> b!205697 (=> (not res!99476) (not e!134506))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205697 (= res!99476 (= (select (arr!4495 _keys!825) i!601) k0!843))))

(declare-fun b!205698 () Bool)

(assert (=> b!205698 (= e!134506 (not e!134505))))

(declare-fun res!99479 () Bool)

(assert (=> b!205698 (=> res!99479 e!134505)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205698 (= res!99479 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6499)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1025 (array!9490 array!9488 (_ BitVec 32) (_ BitVec 32) V!6499 V!6499 (_ BitVec 32) Int) ListLongMap!2889)

(assert (=> b!205698 (= lt!104905 (getCurrentListMap!1025 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104900 () array!9488)

(assert (=> b!205698 (= lt!104897 (getCurrentListMap!1025 _keys!825 lt!104900 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205698 (and (= lt!104902 lt!104899) (= lt!104899 lt!104902))))

(declare-fun lt!104895 () tuple2!3962)

(assert (=> b!205698 (= lt!104899 (+!477 lt!104896 lt!104895))))

(declare-fun v!520 () V!6499)

(assert (=> b!205698 (= lt!104895 (tuple2!3963 k0!843 v!520))))

(declare-datatypes ((Unit!6251 0))(
  ( (Unit!6252) )
))
(declare-fun lt!104903 () Unit!6251)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!138 (array!9490 array!9488 (_ BitVec 32) (_ BitVec 32) V!6499 V!6499 (_ BitVec 32) (_ BitVec 64) V!6499 (_ BitVec 32) Int) Unit!6251)

(assert (=> b!205698 (= lt!104903 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!138 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!396 (array!9490 array!9488 (_ BitVec 32) (_ BitVec 32) V!6499 V!6499 (_ BitVec 32) Int) ListLongMap!2889)

(assert (=> b!205698 (= lt!104902 (getCurrentListMapNoExtraKeys!396 _keys!825 lt!104900 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205698 (= lt!104900 (array!9489 (store (arr!4494 _values!649) i!601 (ValueCellFull!2226 v!520)) (size!4819 _values!649)))))

(assert (=> b!205698 (= lt!104896 (getCurrentListMapNoExtraKeys!396 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205699 () Bool)

(assert (=> b!205699 (= e!134501 true)))

(assert (=> b!205699 (= lt!104901 (+!477 lt!104904 lt!104895))))

(declare-fun lt!104898 () Unit!6251)

(declare-fun addCommutativeForDiffKeys!176 (ListLongMap!2889 (_ BitVec 64) V!6499 (_ BitVec 64) V!6499) Unit!6251)

(assert (=> b!205699 (= lt!104898 (addCommutativeForDiffKeys!176 lt!104896 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205700 () Bool)

(declare-fun res!99477 () Bool)

(assert (=> b!205700 (=> (not res!99477) (not e!134506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9490 (_ BitVec 32)) Bool)

(assert (=> b!205700 (= res!99477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205701 () Bool)

(declare-fun res!99483 () Bool)

(assert (=> b!205701 (=> (not res!99483) (not e!134506))))

(declare-datatypes ((List!2882 0))(
  ( (Nil!2879) (Cons!2878 (h!3520 (_ BitVec 64)) (t!7821 List!2882)) )
))
(declare-fun arrayNoDuplicates!0 (array!9490 (_ BitVec 32) List!2882) Bool)

(assert (=> b!205701 (= res!99483 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2879))))

(declare-fun b!205702 () Bool)

(declare-fun e!134503 () Bool)

(declare-fun mapRes!8777 () Bool)

(assert (=> b!205702 (= e!134504 (and e!134503 mapRes!8777))))

(declare-fun condMapEmpty!8777 () Bool)

(declare-fun mapDefault!8777 () ValueCell!2226)

(assert (=> b!205702 (= condMapEmpty!8777 (= (arr!4494 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2226)) mapDefault!8777)))))

(declare-fun b!205703 () Bool)

(declare-fun res!99482 () Bool)

(assert (=> b!205703 (=> (not res!99482) (not e!134506))))

(assert (=> b!205703 (= res!99482 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4820 _keys!825))))))

(declare-fun mapNonEmpty!8777 () Bool)

(declare-fun tp!18881 () Bool)

(declare-fun e!134502 () Bool)

(assert (=> mapNonEmpty!8777 (= mapRes!8777 (and tp!18881 e!134502))))

(declare-fun mapKey!8777 () (_ BitVec 32))

(declare-fun mapValue!8777 () ValueCell!2226)

(declare-fun mapRest!8777 () (Array (_ BitVec 32) ValueCell!2226))

(assert (=> mapNonEmpty!8777 (= (arr!4494 _values!649) (store mapRest!8777 mapKey!8777 mapValue!8777))))

(declare-fun b!205704 () Bool)

(declare-fun res!99481 () Bool)

(assert (=> b!205704 (=> (not res!99481) (not e!134506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205704 (= res!99481 (validKeyInArray!0 k0!843))))

(declare-fun b!205705 () Bool)

(assert (=> b!205705 (= e!134503 tp_is_empty!5139)))

(declare-fun mapIsEmpty!8777 () Bool)

(assert (=> mapIsEmpty!8777 mapRes!8777))

(declare-fun b!205706 () Bool)

(declare-fun res!99480 () Bool)

(assert (=> b!205706 (=> (not res!99480) (not e!134506))))

(assert (=> b!205706 (= res!99480 (and (= (size!4819 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4820 _keys!825) (size!4819 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205707 () Bool)

(assert (=> b!205707 (= e!134502 tp_is_empty!5139)))

(assert (= (and start!20636 res!99484) b!205706))

(assert (= (and b!205706 res!99480) b!205700))

(assert (= (and b!205700 res!99477) b!205701))

(assert (= (and b!205701 res!99483) b!205703))

(assert (= (and b!205703 res!99482) b!205704))

(assert (= (and b!205704 res!99481) b!205697))

(assert (= (and b!205697 res!99476) b!205698))

(assert (= (and b!205698 (not res!99479)) b!205696))

(assert (= (and b!205696 (not res!99478)) b!205699))

(assert (= (and b!205702 condMapEmpty!8777) mapIsEmpty!8777))

(assert (= (and b!205702 (not condMapEmpty!8777)) mapNonEmpty!8777))

(get-info :version)

(assert (= (and mapNonEmpty!8777 ((_ is ValueCellFull!2226) mapValue!8777)) b!205707))

(assert (= (and b!205702 ((_ is ValueCellFull!2226) mapDefault!8777)) b!205705))

(assert (= start!20636 b!205702))

(declare-fun m!233377 () Bool)

(assert (=> b!205701 m!233377))

(declare-fun m!233379 () Bool)

(assert (=> b!205704 m!233379))

(declare-fun m!233381 () Bool)

(assert (=> b!205699 m!233381))

(declare-fun m!233383 () Bool)

(assert (=> b!205699 m!233383))

(declare-fun m!233385 () Bool)

(assert (=> b!205696 m!233385))

(declare-fun m!233387 () Bool)

(assert (=> b!205696 m!233387))

(declare-fun m!233389 () Bool)

(assert (=> b!205696 m!233389))

(declare-fun m!233391 () Bool)

(assert (=> b!205698 m!233391))

(declare-fun m!233393 () Bool)

(assert (=> b!205698 m!233393))

(declare-fun m!233395 () Bool)

(assert (=> b!205698 m!233395))

(declare-fun m!233397 () Bool)

(assert (=> b!205698 m!233397))

(declare-fun m!233399 () Bool)

(assert (=> b!205698 m!233399))

(declare-fun m!233401 () Bool)

(assert (=> b!205698 m!233401))

(declare-fun m!233403 () Bool)

(assert (=> b!205698 m!233403))

(declare-fun m!233405 () Bool)

(assert (=> start!20636 m!233405))

(declare-fun m!233407 () Bool)

(assert (=> start!20636 m!233407))

(declare-fun m!233409 () Bool)

(assert (=> start!20636 m!233409))

(declare-fun m!233411 () Bool)

(assert (=> b!205700 m!233411))

(declare-fun m!233413 () Bool)

(assert (=> b!205697 m!233413))

(declare-fun m!233415 () Bool)

(assert (=> mapNonEmpty!8777 m!233415))

(check-sat (not b_next!5283) (not b!205700) (not b!205696) (not b!205704) b_and!12047 (not b!205701) (not b!205698) (not b!205699) tp_is_empty!5139 (not mapNonEmpty!8777) (not start!20636))
(check-sat b_and!12047 (not b_next!5283))
