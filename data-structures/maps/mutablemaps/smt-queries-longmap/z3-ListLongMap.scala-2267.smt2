; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37074 () Bool)

(assert start!37074)

(declare-fun b_free!8193 () Bool)

(declare-fun b_next!8193 () Bool)

(assert (=> start!37074 (= b_free!8193 (not b_next!8193))))

(declare-fun tp!29294 () Bool)

(declare-fun b_and!15453 () Bool)

(assert (=> start!37074 (= tp!29294 b_and!15453)))

(declare-fun b!372608 () Bool)

(declare-fun e!227244 () Bool)

(declare-fun e!227241 () Bool)

(assert (=> b!372608 (= e!227244 e!227241)))

(declare-fun res!209803 () Bool)

(assert (=> b!372608 (=> (not res!209803) (not e!227241))))

(declare-datatypes ((array!21589 0))(
  ( (array!21590 (arr!10260 (Array (_ BitVec 32) (_ BitVec 64))) (size!10612 (_ BitVec 32))) )
))
(declare-fun lt!170910 () array!21589)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21589 (_ BitVec 32)) Bool)

(assert (=> b!372608 (= res!209803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170910 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21589)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372608 (= lt!170910 (array!21590 (store (arr!10260 _keys!658) i!548 k0!778) (size!10612 _keys!658)))))

(declare-fun b!372609 () Bool)

(declare-fun e!227240 () Bool)

(declare-fun tp_is_empty!8841 () Bool)

(assert (=> b!372609 (= e!227240 tp_is_empty!8841)))

(declare-fun b!372610 () Bool)

(declare-fun res!209798 () Bool)

(assert (=> b!372610 (=> (not res!209798) (not e!227244))))

(declare-datatypes ((List!5775 0))(
  ( (Nil!5772) (Cons!5771 (h!6627 (_ BitVec 64)) (t!10933 List!5775)) )
))
(declare-fun arrayNoDuplicates!0 (array!21589 (_ BitVec 32) List!5775) Bool)

(assert (=> b!372610 (= res!209798 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5772))))

(declare-fun b!372611 () Bool)

(declare-fun e!227242 () Bool)

(assert (=> b!372611 (= e!227242 tp_is_empty!8841)))

(declare-fun b!372612 () Bool)

(declare-fun e!227239 () Bool)

(declare-fun mapRes!14826 () Bool)

(assert (=> b!372612 (= e!227239 (and e!227240 mapRes!14826))))

(declare-fun condMapEmpty!14826 () Bool)

(declare-datatypes ((V!12893 0))(
  ( (V!12894 (val!4465 Int)) )
))
(declare-datatypes ((ValueCell!4077 0))(
  ( (ValueCellFull!4077 (v!6658 V!12893)) (EmptyCell!4077) )
))
(declare-datatypes ((array!21591 0))(
  ( (array!21592 (arr!10261 (Array (_ BitVec 32) ValueCell!4077)) (size!10613 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21591)

(declare-fun mapDefault!14826 () ValueCell!4077)

(assert (=> b!372612 (= condMapEmpty!14826 (= (arr!10261 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4077)) mapDefault!14826)))))

(declare-fun b!372613 () Bool)

(declare-fun res!209797 () Bool)

(assert (=> b!372613 (=> (not res!209797) (not e!227244))))

(assert (=> b!372613 (= res!209797 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10612 _keys!658))))))

(declare-fun b!372614 () Bool)

(declare-fun res!209804 () Bool)

(assert (=> b!372614 (=> (not res!209804) (not e!227244))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!372614 (= res!209804 (and (= (size!10613 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10612 _keys!658) (size!10613 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!209799 () Bool)

(assert (=> start!37074 (=> (not res!209799) (not e!227244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37074 (= res!209799 (validMask!0 mask!970))))

(assert (=> start!37074 e!227244))

(declare-fun array_inv!7578 (array!21591) Bool)

(assert (=> start!37074 (and (array_inv!7578 _values!506) e!227239)))

(assert (=> start!37074 tp!29294))

(assert (=> start!37074 true))

(assert (=> start!37074 tp_is_empty!8841))

(declare-fun array_inv!7579 (array!21589) Bool)

(assert (=> start!37074 (array_inv!7579 _keys!658)))

(declare-fun b!372615 () Bool)

(declare-fun res!209795 () Bool)

(assert (=> b!372615 (=> (not res!209795) (not e!227244))))

(declare-fun arrayContainsKey!0 (array!21589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372615 (= res!209795 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!372616 () Bool)

(declare-fun res!209796 () Bool)

(assert (=> b!372616 (=> (not res!209796) (not e!227244))))

(assert (=> b!372616 (= res!209796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14826 () Bool)

(assert (=> mapIsEmpty!14826 mapRes!14826))

(declare-fun b!372617 () Bool)

(declare-fun res!209802 () Bool)

(assert (=> b!372617 (=> (not res!209802) (not e!227244))))

(assert (=> b!372617 (= res!209802 (or (= (select (arr!10260 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10260 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372618 () Bool)

(declare-fun res!209801 () Bool)

(assert (=> b!372618 (=> (not res!209801) (not e!227241))))

(assert (=> b!372618 (= res!209801 (arrayNoDuplicates!0 lt!170910 #b00000000000000000000000000000000 Nil!5772))))

(declare-fun mapNonEmpty!14826 () Bool)

(declare-fun tp!29295 () Bool)

(assert (=> mapNonEmpty!14826 (= mapRes!14826 (and tp!29295 e!227242))))

(declare-fun mapValue!14826 () ValueCell!4077)

(declare-fun mapKey!14826 () (_ BitVec 32))

(declare-fun mapRest!14826 () (Array (_ BitVec 32) ValueCell!4077))

(assert (=> mapNonEmpty!14826 (= (arr!10261 _values!506) (store mapRest!14826 mapKey!14826 mapValue!14826))))

(declare-fun b!372619 () Bool)

(declare-fun res!209800 () Bool)

(assert (=> b!372619 (=> (not res!209800) (not e!227244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372619 (= res!209800 (validKeyInArray!0 k0!778))))

(declare-fun b!372620 () Bool)

(assert (=> b!372620 (= e!227241 (not true))))

(declare-datatypes ((tuple2!5900 0))(
  ( (tuple2!5901 (_1!2960 (_ BitVec 64)) (_2!2960 V!12893)) )
))
(declare-datatypes ((List!5776 0))(
  ( (Nil!5773) (Cons!5772 (h!6628 tuple2!5900) (t!10934 List!5776)) )
))
(declare-datatypes ((ListLongMap!4827 0))(
  ( (ListLongMap!4828 (toList!2429 List!5776)) )
))
(declare-fun lt!170911 () ListLongMap!4827)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!170912 () array!21591)

(declare-fun zeroValue!472 () V!12893)

(declare-fun minValue!472 () V!12893)

(declare-fun getCurrentListMap!1879 (array!21589 array!21591 (_ BitVec 32) (_ BitVec 32) V!12893 V!12893 (_ BitVec 32) Int) ListLongMap!4827)

(assert (=> b!372620 (= lt!170911 (getCurrentListMap!1879 lt!170910 lt!170912 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170909 () ListLongMap!4827)

(declare-fun lt!170913 () ListLongMap!4827)

(assert (=> b!372620 (and (= lt!170909 lt!170913) (= lt!170913 lt!170909))))

(declare-fun lt!170914 () ListLongMap!4827)

(declare-fun v!373 () V!12893)

(declare-fun +!770 (ListLongMap!4827 tuple2!5900) ListLongMap!4827)

(assert (=> b!372620 (= lt!170913 (+!770 lt!170914 (tuple2!5901 k0!778 v!373)))))

(declare-datatypes ((Unit!11445 0))(
  ( (Unit!11446) )
))
(declare-fun lt!170908 () Unit!11445)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!30 (array!21589 array!21591 (_ BitVec 32) (_ BitVec 32) V!12893 V!12893 (_ BitVec 32) (_ BitVec 64) V!12893 (_ BitVec 32) Int) Unit!11445)

(assert (=> b!372620 (= lt!170908 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!30 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!697 (array!21589 array!21591 (_ BitVec 32) (_ BitVec 32) V!12893 V!12893 (_ BitVec 32) Int) ListLongMap!4827)

(assert (=> b!372620 (= lt!170909 (getCurrentListMapNoExtraKeys!697 lt!170910 lt!170912 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372620 (= lt!170912 (array!21592 (store (arr!10261 _values!506) i!548 (ValueCellFull!4077 v!373)) (size!10613 _values!506)))))

(assert (=> b!372620 (= lt!170914 (getCurrentListMapNoExtraKeys!697 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37074 res!209799) b!372614))

(assert (= (and b!372614 res!209804) b!372616))

(assert (= (and b!372616 res!209796) b!372610))

(assert (= (and b!372610 res!209798) b!372613))

(assert (= (and b!372613 res!209797) b!372619))

(assert (= (and b!372619 res!209800) b!372617))

(assert (= (and b!372617 res!209802) b!372615))

(assert (= (and b!372615 res!209795) b!372608))

(assert (= (and b!372608 res!209803) b!372618))

(assert (= (and b!372618 res!209801) b!372620))

(assert (= (and b!372612 condMapEmpty!14826) mapIsEmpty!14826))

(assert (= (and b!372612 (not condMapEmpty!14826)) mapNonEmpty!14826))

(get-info :version)

(assert (= (and mapNonEmpty!14826 ((_ is ValueCellFull!4077) mapValue!14826)) b!372611))

(assert (= (and b!372612 ((_ is ValueCellFull!4077) mapDefault!14826)) b!372609))

(assert (= start!37074 b!372612))

(declare-fun m!368489 () Bool)

(assert (=> b!372618 m!368489))

(declare-fun m!368491 () Bool)

(assert (=> b!372608 m!368491))

(declare-fun m!368493 () Bool)

(assert (=> b!372608 m!368493))

(declare-fun m!368495 () Bool)

(assert (=> b!372616 m!368495))

(declare-fun m!368497 () Bool)

(assert (=> b!372617 m!368497))

(declare-fun m!368499 () Bool)

(assert (=> b!372615 m!368499))

(declare-fun m!368501 () Bool)

(assert (=> b!372620 m!368501))

(declare-fun m!368503 () Bool)

(assert (=> b!372620 m!368503))

(declare-fun m!368505 () Bool)

(assert (=> b!372620 m!368505))

(declare-fun m!368507 () Bool)

(assert (=> b!372620 m!368507))

(declare-fun m!368509 () Bool)

(assert (=> b!372620 m!368509))

(declare-fun m!368511 () Bool)

(assert (=> b!372620 m!368511))

(declare-fun m!368513 () Bool)

(assert (=> b!372610 m!368513))

(declare-fun m!368515 () Bool)

(assert (=> mapNonEmpty!14826 m!368515))

(declare-fun m!368517 () Bool)

(assert (=> b!372619 m!368517))

(declare-fun m!368519 () Bool)

(assert (=> start!37074 m!368519))

(declare-fun m!368521 () Bool)

(assert (=> start!37074 m!368521))

(declare-fun m!368523 () Bool)

(assert (=> start!37074 m!368523))

(check-sat (not b!372608) (not b!372620) b_and!15453 (not start!37074) (not b!372618) (not mapNonEmpty!14826) tp_is_empty!8841 (not b!372616) (not b!372610) (not b_next!8193) (not b!372619) (not b!372615))
(check-sat b_and!15453 (not b_next!8193))
