; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40912 () Bool)

(assert start!40912)

(declare-fun b_free!10839 () Bool)

(declare-fun b_next!10839 () Bool)

(assert (=> start!40912 (= b_free!10839 (not b_next!10839))))

(declare-fun tp!38343 () Bool)

(declare-fun b_and!18999 () Bool)

(assert (=> start!40912 (= tp!38343 b_and!18999)))

(declare-fun b!454307 () Bool)

(declare-fun res!270778 () Bool)

(declare-fun e!265799 () Bool)

(assert (=> b!454307 (=> (not res!270778) (not e!265799))))

(declare-datatypes ((array!28123 0))(
  ( (array!28124 (arr!13502 (Array (_ BitVec 32) (_ BitVec 64))) (size!13854 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28123)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28123 (_ BitVec 32)) Bool)

(assert (=> b!454307 (= res!270778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454308 () Bool)

(declare-fun e!265802 () Bool)

(declare-fun e!265797 () Bool)

(declare-fun mapRes!19906 () Bool)

(assert (=> b!454308 (= e!265802 (and e!265797 mapRes!19906))))

(declare-fun condMapEmpty!19906 () Bool)

(declare-datatypes ((V!17341 0))(
  ( (V!17342 (val!6133 Int)) )
))
(declare-datatypes ((ValueCell!5745 0))(
  ( (ValueCellFull!5745 (v!8395 V!17341)) (EmptyCell!5745) )
))
(declare-datatypes ((array!28125 0))(
  ( (array!28126 (arr!13503 (Array (_ BitVec 32) ValueCell!5745)) (size!13855 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28125)

(declare-fun mapDefault!19906 () ValueCell!5745)

(assert (=> b!454308 (= condMapEmpty!19906 (= (arr!13503 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5745)) mapDefault!19906)))))

(declare-fun b!454309 () Bool)

(declare-fun res!270773 () Bool)

(assert (=> b!454309 (=> (not res!270773) (not e!265799))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454309 (= res!270773 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13854 _keys!709))))))

(declare-fun res!270781 () Bool)

(assert (=> start!40912 (=> (not res!270781) (not e!265799))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40912 (= res!270781 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13854 _keys!709))))))

(assert (=> start!40912 e!265799))

(declare-fun tp_is_empty!12177 () Bool)

(assert (=> start!40912 tp_is_empty!12177))

(assert (=> start!40912 tp!38343))

(assert (=> start!40912 true))

(declare-fun array_inv!9772 (array!28125) Bool)

(assert (=> start!40912 (and (array_inv!9772 _values!549) e!265802)))

(declare-fun array_inv!9773 (array!28123) Bool)

(assert (=> start!40912 (array_inv!9773 _keys!709)))

(declare-fun mapIsEmpty!19906 () Bool)

(assert (=> mapIsEmpty!19906 mapRes!19906))

(declare-fun b!454310 () Bool)

(declare-fun res!270774 () Bool)

(assert (=> b!454310 (=> (not res!270774) (not e!265799))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454310 (= res!270774 (validKeyInArray!0 k0!794))))

(declare-fun b!454311 () Bool)

(declare-fun e!265800 () Bool)

(assert (=> b!454311 (= e!265799 e!265800)))

(declare-fun res!270775 () Bool)

(assert (=> b!454311 (=> (not res!270775) (not e!265800))))

(declare-fun lt!206111 () array!28123)

(assert (=> b!454311 (= res!270775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206111 mask!1025))))

(assert (=> b!454311 (= lt!206111 (array!28124 (store (arr!13502 _keys!709) i!563 k0!794) (size!13854 _keys!709)))))

(declare-fun b!454312 () Bool)

(declare-fun res!270771 () Bool)

(assert (=> b!454312 (=> (not res!270771) (not e!265799))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!454312 (= res!270771 (and (= (size!13855 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13854 _keys!709) (size!13855 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454313 () Bool)

(declare-fun res!270776 () Bool)

(assert (=> b!454313 (=> (not res!270776) (not e!265799))))

(declare-fun arrayContainsKey!0 (array!28123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454313 (= res!270776 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!454314 () Bool)

(declare-fun e!265798 () Bool)

(assert (=> b!454314 (= e!265798 tp_is_empty!12177)))

(declare-fun b!454315 () Bool)

(declare-fun res!270780 () Bool)

(assert (=> b!454315 (=> (not res!270780) (not e!265800))))

(declare-datatypes ((List!8131 0))(
  ( (Nil!8128) (Cons!8127 (h!8983 (_ BitVec 64)) (t!13967 List!8131)) )
))
(declare-fun arrayNoDuplicates!0 (array!28123 (_ BitVec 32) List!8131) Bool)

(assert (=> b!454315 (= res!270780 (arrayNoDuplicates!0 lt!206111 #b00000000000000000000000000000000 Nil!8128))))

(declare-fun mapNonEmpty!19906 () Bool)

(declare-fun tp!38344 () Bool)

(assert (=> mapNonEmpty!19906 (= mapRes!19906 (and tp!38344 e!265798))))

(declare-fun mapValue!19906 () ValueCell!5745)

(declare-fun mapKey!19906 () (_ BitVec 32))

(declare-fun mapRest!19906 () (Array (_ BitVec 32) ValueCell!5745))

(assert (=> mapNonEmpty!19906 (= (arr!13503 _values!549) (store mapRest!19906 mapKey!19906 mapValue!19906))))

(declare-fun b!454316 () Bool)

(assert (=> b!454316 (= e!265800 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17341)

(declare-datatypes ((tuple2!8026 0))(
  ( (tuple2!8027 (_1!4023 (_ BitVec 64)) (_2!4023 V!17341)) )
))
(declare-datatypes ((List!8132 0))(
  ( (Nil!8129) (Cons!8128 (h!8984 tuple2!8026) (t!13968 List!8132)) )
))
(declare-datatypes ((ListLongMap!6953 0))(
  ( (ListLongMap!6954 (toList!3492 List!8132)) )
))
(declare-fun lt!206110 () ListLongMap!6953)

(declare-fun v!412 () V!17341)

(declare-fun minValue!515 () V!17341)

(declare-fun getCurrentListMapNoExtraKeys!1668 (array!28123 array!28125 (_ BitVec 32) (_ BitVec 32) V!17341 V!17341 (_ BitVec 32) Int) ListLongMap!6953)

(assert (=> b!454316 (= lt!206110 (getCurrentListMapNoExtraKeys!1668 lt!206111 (array!28126 (store (arr!13503 _values!549) i!563 (ValueCellFull!5745 v!412)) (size!13855 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206112 () ListLongMap!6953)

(assert (=> b!454316 (= lt!206112 (getCurrentListMapNoExtraKeys!1668 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454317 () Bool)

(declare-fun res!270777 () Bool)

(assert (=> b!454317 (=> (not res!270777) (not e!265800))))

(assert (=> b!454317 (= res!270777 (bvsle from!863 i!563))))

(declare-fun b!454318 () Bool)

(declare-fun res!270779 () Bool)

(assert (=> b!454318 (=> (not res!270779) (not e!265799))))

(assert (=> b!454318 (= res!270779 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8128))))

(declare-fun b!454319 () Bool)

(assert (=> b!454319 (= e!265797 tp_is_empty!12177)))

(declare-fun b!454320 () Bool)

(declare-fun res!270782 () Bool)

(assert (=> b!454320 (=> (not res!270782) (not e!265799))))

(assert (=> b!454320 (= res!270782 (or (= (select (arr!13502 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13502 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454321 () Bool)

(declare-fun res!270772 () Bool)

(assert (=> b!454321 (=> (not res!270772) (not e!265799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454321 (= res!270772 (validMask!0 mask!1025))))

(assert (= (and start!40912 res!270781) b!454321))

(assert (= (and b!454321 res!270772) b!454312))

(assert (= (and b!454312 res!270771) b!454307))

(assert (= (and b!454307 res!270778) b!454318))

(assert (= (and b!454318 res!270779) b!454309))

(assert (= (and b!454309 res!270773) b!454310))

(assert (= (and b!454310 res!270774) b!454320))

(assert (= (and b!454320 res!270782) b!454313))

(assert (= (and b!454313 res!270776) b!454311))

(assert (= (and b!454311 res!270775) b!454315))

(assert (= (and b!454315 res!270780) b!454317))

(assert (= (and b!454317 res!270777) b!454316))

(assert (= (and b!454308 condMapEmpty!19906) mapIsEmpty!19906))

(assert (= (and b!454308 (not condMapEmpty!19906)) mapNonEmpty!19906))

(get-info :version)

(assert (= (and mapNonEmpty!19906 ((_ is ValueCellFull!5745) mapValue!19906)) b!454314))

(assert (= (and b!454308 ((_ is ValueCellFull!5745) mapDefault!19906)) b!454319))

(assert (= start!40912 b!454308))

(declare-fun m!438441 () Bool)

(assert (=> b!454318 m!438441))

(declare-fun m!438443 () Bool)

(assert (=> b!454311 m!438443))

(declare-fun m!438445 () Bool)

(assert (=> b!454311 m!438445))

(declare-fun m!438447 () Bool)

(assert (=> start!40912 m!438447))

(declare-fun m!438449 () Bool)

(assert (=> start!40912 m!438449))

(declare-fun m!438451 () Bool)

(assert (=> b!454307 m!438451))

(declare-fun m!438453 () Bool)

(assert (=> b!454313 m!438453))

(declare-fun m!438455 () Bool)

(assert (=> b!454320 m!438455))

(declare-fun m!438457 () Bool)

(assert (=> b!454310 m!438457))

(declare-fun m!438459 () Bool)

(assert (=> mapNonEmpty!19906 m!438459))

(declare-fun m!438461 () Bool)

(assert (=> b!454315 m!438461))

(declare-fun m!438463 () Bool)

(assert (=> b!454321 m!438463))

(declare-fun m!438465 () Bool)

(assert (=> b!454316 m!438465))

(declare-fun m!438467 () Bool)

(assert (=> b!454316 m!438467))

(declare-fun m!438469 () Bool)

(assert (=> b!454316 m!438469))

(check-sat (not b!454310) tp_is_empty!12177 (not b!454311) b_and!18999 (not b!454313) (not b!454316) (not b!454318) (not b!454307) (not mapNonEmpty!19906) (not start!40912) (not b!454315) (not b!454321) (not b_next!10839))
(check-sat b_and!18999 (not b_next!10839))
