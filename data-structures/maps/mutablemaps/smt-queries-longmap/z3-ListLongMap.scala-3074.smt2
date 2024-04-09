; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43306 () Bool)

(assert start!43306)

(declare-fun b_free!12165 () Bool)

(declare-fun b_next!12165 () Bool)

(assert (=> start!43306 (= b_free!12165 (not b_next!12165))))

(declare-fun tp!42765 () Bool)

(declare-fun b_and!20935 () Bool)

(assert (=> start!43306 (= tp!42765 b_and!20935)))

(declare-fun b!479504 () Bool)

(declare-fun e!282144 () Bool)

(declare-fun e!282146 () Bool)

(declare-fun mapRes!22213 () Bool)

(assert (=> b!479504 (= e!282144 (and e!282146 mapRes!22213))))

(declare-fun condMapEmpty!22213 () Bool)

(declare-datatypes ((V!19307 0))(
  ( (V!19308 (val!6886 Int)) )
))
(declare-datatypes ((ValueCell!6477 0))(
  ( (ValueCellFull!6477 (v!9171 V!19307)) (EmptyCell!6477) )
))
(declare-datatypes ((array!30991 0))(
  ( (array!30992 (arr!14899 (Array (_ BitVec 32) ValueCell!6477)) (size!15257 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30991)

(declare-fun mapDefault!22213 () ValueCell!6477)

(assert (=> b!479504 (= condMapEmpty!22213 (= (arr!14899 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6477)) mapDefault!22213)))))

(declare-fun b!479505 () Bool)

(declare-fun res!286092 () Bool)

(declare-fun e!282147 () Bool)

(assert (=> b!479505 (=> (not res!286092) (not e!282147))))

(declare-datatypes ((array!30993 0))(
  ( (array!30994 (arr!14900 (Array (_ BitVec 32) (_ BitVec 64))) (size!15258 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30993)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30993 (_ BitVec 32)) Bool)

(assert (=> b!479505 (= res!286092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapIsEmpty!22213 () Bool)

(assert (=> mapIsEmpty!22213 mapRes!22213))

(declare-fun res!286094 () Bool)

(assert (=> start!43306 (=> (not res!286094) (not e!282147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43306 (= res!286094 (validMask!0 mask!2352))))

(assert (=> start!43306 e!282147))

(assert (=> start!43306 true))

(declare-fun tp_is_empty!13677 () Bool)

(assert (=> start!43306 tp_is_empty!13677))

(declare-fun array_inv!10732 (array!30991) Bool)

(assert (=> start!43306 (and (array_inv!10732 _values!1516) e!282144)))

(assert (=> start!43306 tp!42765))

(declare-fun array_inv!10733 (array!30993) Bool)

(assert (=> start!43306 (array_inv!10733 _keys!1874)))

(declare-fun b!479506 () Bool)

(assert (=> b!479506 (= e!282147 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19307)

(declare-fun lt!217862 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19307)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9032 0))(
  ( (tuple2!9033 (_1!4526 (_ BitVec 64)) (_2!4526 V!19307)) )
))
(declare-datatypes ((List!9145 0))(
  ( (Nil!9142) (Cons!9141 (h!9997 tuple2!9032) (t!15359 List!9145)) )
))
(declare-datatypes ((ListLongMap!7959 0))(
  ( (ListLongMap!7960 (toList!3995 List!9145)) )
))
(declare-fun contains!2602 (ListLongMap!7959 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2287 (array!30993 array!30991 (_ BitVec 32) (_ BitVec 32) V!19307 V!19307 (_ BitVec 32) Int) ListLongMap!7959)

(assert (=> b!479506 (= lt!217862 (contains!2602 (getCurrentListMap!2287 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!479507 () Bool)

(declare-fun e!282145 () Bool)

(assert (=> b!479507 (= e!282145 tp_is_empty!13677)))

(declare-fun b!479508 () Bool)

(declare-fun res!286095 () Bool)

(assert (=> b!479508 (=> (not res!286095) (not e!282147))))

(declare-datatypes ((List!9146 0))(
  ( (Nil!9143) (Cons!9142 (h!9998 (_ BitVec 64)) (t!15360 List!9146)) )
))
(declare-fun arrayNoDuplicates!0 (array!30993 (_ BitVec 32) List!9146) Bool)

(assert (=> b!479508 (= res!286095 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9143))))

(declare-fun mapNonEmpty!22213 () Bool)

(declare-fun tp!42766 () Bool)

(assert (=> mapNonEmpty!22213 (= mapRes!22213 (and tp!42766 e!282145))))

(declare-fun mapKey!22213 () (_ BitVec 32))

(declare-fun mapRest!22213 () (Array (_ BitVec 32) ValueCell!6477))

(declare-fun mapValue!22213 () ValueCell!6477)

(assert (=> mapNonEmpty!22213 (= (arr!14899 _values!1516) (store mapRest!22213 mapKey!22213 mapValue!22213))))

(declare-fun b!479509 () Bool)

(assert (=> b!479509 (= e!282146 tp_is_empty!13677)))

(declare-fun b!479510 () Bool)

(declare-fun res!286093 () Bool)

(assert (=> b!479510 (=> (not res!286093) (not e!282147))))

(assert (=> b!479510 (= res!286093 (and (= (size!15257 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15258 _keys!1874) (size!15257 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(assert (= (and start!43306 res!286094) b!479510))

(assert (= (and b!479510 res!286093) b!479505))

(assert (= (and b!479505 res!286092) b!479508))

(assert (= (and b!479508 res!286095) b!479506))

(assert (= (and b!479504 condMapEmpty!22213) mapIsEmpty!22213))

(assert (= (and b!479504 (not condMapEmpty!22213)) mapNonEmpty!22213))

(get-info :version)

(assert (= (and mapNonEmpty!22213 ((_ is ValueCellFull!6477) mapValue!22213)) b!479507))

(assert (= (and b!479504 ((_ is ValueCellFull!6477) mapDefault!22213)) b!479509))

(assert (= start!43306 b!479504))

(declare-fun m!461423 () Bool)

(assert (=> b!479508 m!461423))

(declare-fun m!461425 () Bool)

(assert (=> mapNonEmpty!22213 m!461425))

(declare-fun m!461427 () Bool)

(assert (=> start!43306 m!461427))

(declare-fun m!461429 () Bool)

(assert (=> start!43306 m!461429))

(declare-fun m!461431 () Bool)

(assert (=> start!43306 m!461431))

(declare-fun m!461433 () Bool)

(assert (=> b!479506 m!461433))

(assert (=> b!479506 m!461433))

(declare-fun m!461435 () Bool)

(assert (=> b!479506 m!461435))

(declare-fun m!461437 () Bool)

(assert (=> b!479505 m!461437))

(check-sat (not b!479506) (not b!479505) (not start!43306) (not mapNonEmpty!22213) tp_is_empty!13677 (not b_next!12165) (not b!479508) b_and!20935)
(check-sat b_and!20935 (not b_next!12165))
