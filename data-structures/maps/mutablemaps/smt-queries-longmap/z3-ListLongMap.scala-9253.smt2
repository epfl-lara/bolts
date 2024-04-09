; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110904 () Bool)

(assert start!110904)

(declare-fun b_free!29703 () Bool)

(declare-fun b_next!29703 () Bool)

(assert (=> start!110904 (= b_free!29703 (not b_next!29703))))

(declare-fun tp!104431 () Bool)

(declare-fun b_and!47921 () Bool)

(assert (=> start!110904 (= tp!104431 b_and!47921)))

(declare-fun b!1312447 () Bool)

(declare-fun e!748607 () Bool)

(declare-fun e!748608 () Bool)

(declare-fun mapRes!54778 () Bool)

(assert (=> b!1312447 (= e!748607 (and e!748608 mapRes!54778))))

(declare-fun condMapEmpty!54778 () Bool)

(declare-datatypes ((V!52347 0))(
  ( (V!52348 (val!17791 Int)) )
))
(declare-datatypes ((ValueCell!16818 0))(
  ( (ValueCellFull!16818 (v!20416 V!52347)) (EmptyCell!16818) )
))
(declare-datatypes ((array!87817 0))(
  ( (array!87818 (arr!42384 (Array (_ BitVec 32) ValueCell!16818)) (size!42935 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87817)

(declare-fun mapDefault!54778 () ValueCell!16818)

(assert (=> b!1312447 (= condMapEmpty!54778 (= (arr!42384 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16818)) mapDefault!54778)))))

(declare-fun b!1312448 () Bool)

(declare-fun res!871448 () Bool)

(declare-fun e!748610 () Bool)

(assert (=> b!1312448 (=> (not res!871448) (not e!748610))))

(declare-datatypes ((array!87819 0))(
  ( (array!87820 (arr!42385 (Array (_ BitVec 32) (_ BitVec 64))) (size!42936 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87819)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312448 (= res!871448 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42936 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312449 () Bool)

(declare-fun tp_is_empty!35433 () Bool)

(assert (=> b!1312449 (= e!748608 tp_is_empty!35433)))

(declare-fun b!1312450 () Bool)

(declare-fun e!748609 () Bool)

(assert (=> b!1312450 (= e!748609 tp_is_empty!35433)))

(declare-fun mapNonEmpty!54778 () Bool)

(declare-fun tp!104432 () Bool)

(assert (=> mapNonEmpty!54778 (= mapRes!54778 (and tp!104432 e!748609))))

(declare-fun mapRest!54778 () (Array (_ BitVec 32) ValueCell!16818))

(declare-fun mapKey!54778 () (_ BitVec 32))

(declare-fun mapValue!54778 () ValueCell!16818)

(assert (=> mapNonEmpty!54778 (= (arr!42384 _values!1354) (store mapRest!54778 mapKey!54778 mapValue!54778))))

(declare-fun b!1312451 () Bool)

(declare-fun res!871449 () Bool)

(assert (=> b!1312451 (=> (not res!871449) (not e!748610))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87819 (_ BitVec 32)) Bool)

(assert (=> b!1312451 (= res!871449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312452 () Bool)

(declare-fun res!871447 () Bool)

(assert (=> b!1312452 (=> (not res!871447) (not e!748610))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312452 (= res!871447 (and (= (size!42935 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42936 _keys!1628) (size!42935 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!871450 () Bool)

(assert (=> start!110904 (=> (not res!871450) (not e!748610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110904 (= res!871450 (validMask!0 mask!2040))))

(assert (=> start!110904 e!748610))

(assert (=> start!110904 tp!104431))

(declare-fun array_inv!32001 (array!87819) Bool)

(assert (=> start!110904 (array_inv!32001 _keys!1628)))

(assert (=> start!110904 true))

(assert (=> start!110904 tp_is_empty!35433))

(declare-fun array_inv!32002 (array!87817) Bool)

(assert (=> start!110904 (and (array_inv!32002 _values!1354) e!748607)))

(declare-fun b!1312446 () Bool)

(assert (=> b!1312446 (= e!748610 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585505 () Bool)

(declare-fun minValue!1296 () V!52347)

(declare-fun zeroValue!1296 () V!52347)

(declare-datatypes ((tuple2!23110 0))(
  ( (tuple2!23111 (_1!11565 (_ BitVec 64)) (_2!11565 V!52347)) )
))
(declare-datatypes ((List!30269 0))(
  ( (Nil!30266) (Cons!30265 (h!31474 tuple2!23110) (t!43882 List!30269)) )
))
(declare-datatypes ((ListLongMap!20779 0))(
  ( (ListLongMap!20780 (toList!10405 List!30269)) )
))
(declare-fun contains!8491 (ListLongMap!20779 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5361 (array!87819 array!87817 (_ BitVec 32) (_ BitVec 32) V!52347 V!52347 (_ BitVec 32) Int) ListLongMap!20779)

(assert (=> b!1312446 (= lt!585505 (contains!8491 (getCurrentListMap!5361 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312453 () Bool)

(declare-fun res!871451 () Bool)

(assert (=> b!1312453 (=> (not res!871451) (not e!748610))))

(declare-datatypes ((List!30270 0))(
  ( (Nil!30267) (Cons!30266 (h!31475 (_ BitVec 64)) (t!43883 List!30270)) )
))
(declare-fun arrayNoDuplicates!0 (array!87819 (_ BitVec 32) List!30270) Bool)

(assert (=> b!1312453 (= res!871451 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30267))))

(declare-fun mapIsEmpty!54778 () Bool)

(assert (=> mapIsEmpty!54778 mapRes!54778))

(assert (= (and start!110904 res!871450) b!1312452))

(assert (= (and b!1312452 res!871447) b!1312451))

(assert (= (and b!1312451 res!871449) b!1312453))

(assert (= (and b!1312453 res!871451) b!1312448))

(assert (= (and b!1312448 res!871448) b!1312446))

(assert (= (and b!1312447 condMapEmpty!54778) mapIsEmpty!54778))

(assert (= (and b!1312447 (not condMapEmpty!54778)) mapNonEmpty!54778))

(get-info :version)

(assert (= (and mapNonEmpty!54778 ((_ is ValueCellFull!16818) mapValue!54778)) b!1312450))

(assert (= (and b!1312447 ((_ is ValueCellFull!16818) mapDefault!54778)) b!1312449))

(assert (= start!110904 b!1312447))

(declare-fun m!1201639 () Bool)

(assert (=> b!1312453 m!1201639))

(declare-fun m!1201641 () Bool)

(assert (=> b!1312446 m!1201641))

(assert (=> b!1312446 m!1201641))

(declare-fun m!1201643 () Bool)

(assert (=> b!1312446 m!1201643))

(declare-fun m!1201645 () Bool)

(assert (=> start!110904 m!1201645))

(declare-fun m!1201647 () Bool)

(assert (=> start!110904 m!1201647))

(declare-fun m!1201649 () Bool)

(assert (=> start!110904 m!1201649))

(declare-fun m!1201651 () Bool)

(assert (=> b!1312451 m!1201651))

(declare-fun m!1201653 () Bool)

(assert (=> mapNonEmpty!54778 m!1201653))

(check-sat (not b!1312451) b_and!47921 (not b!1312446) tp_is_empty!35433 (not b_next!29703) (not b!1312453) (not start!110904) (not mapNonEmpty!54778))
(check-sat b_and!47921 (not b_next!29703))
