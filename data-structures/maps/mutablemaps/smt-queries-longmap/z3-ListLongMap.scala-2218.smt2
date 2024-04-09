; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36780 () Bool)

(assert start!36780)

(declare-fun b!366915 () Bool)

(declare-fun res!205427 () Bool)

(declare-fun e!224597 () Bool)

(assert (=> b!366915 (=> (not res!205427) (not e!224597))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366915 (= res!205427 (validKeyInArray!0 k0!778))))

(declare-fun b!366916 () Bool)

(declare-fun res!205431 () Bool)

(assert (=> b!366916 (=> (not res!205431) (not e!224597))))

(declare-datatypes ((array!21019 0))(
  ( (array!21020 (arr!9975 (Array (_ BitVec 32) (_ BitVec 64))) (size!10327 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21019)

(declare-datatypes ((List!5579 0))(
  ( (Nil!5576) (Cons!5575 (h!6431 (_ BitVec 64)) (t!10737 List!5579)) )
))
(declare-fun arrayNoDuplicates!0 (array!21019 (_ BitVec 32) List!5579) Bool)

(assert (=> b!366916 (= res!205431 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5576))))

(declare-fun b!366917 () Bool)

(declare-fun e!224593 () Bool)

(assert (=> b!366917 (= e!224593 false)))

(declare-fun lt!169291 () Bool)

(declare-fun lt!169290 () array!21019)

(assert (=> b!366917 (= lt!169291 (arrayNoDuplicates!0 lt!169290 #b00000000000000000000000000000000 Nil!5576))))

(declare-fun b!366918 () Bool)

(declare-fun e!224594 () Bool)

(declare-fun e!224596 () Bool)

(declare-fun mapRes!14385 () Bool)

(assert (=> b!366918 (= e!224594 (and e!224596 mapRes!14385))))

(declare-fun condMapEmpty!14385 () Bool)

(declare-datatypes ((V!12501 0))(
  ( (V!12502 (val!4318 Int)) )
))
(declare-datatypes ((ValueCell!3930 0))(
  ( (ValueCellFull!3930 (v!6511 V!12501)) (EmptyCell!3930) )
))
(declare-datatypes ((array!21021 0))(
  ( (array!21022 (arr!9976 (Array (_ BitVec 32) ValueCell!3930)) (size!10328 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21021)

(declare-fun mapDefault!14385 () ValueCell!3930)

(assert (=> b!366918 (= condMapEmpty!14385 (= (arr!9976 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3930)) mapDefault!14385)))))

(declare-fun res!205433 () Bool)

(assert (=> start!36780 (=> (not res!205433) (not e!224597))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36780 (= res!205433 (validMask!0 mask!970))))

(assert (=> start!36780 e!224597))

(assert (=> start!36780 true))

(declare-fun array_inv!7376 (array!21021) Bool)

(assert (=> start!36780 (and (array_inv!7376 _values!506) e!224594)))

(declare-fun array_inv!7377 (array!21019) Bool)

(assert (=> start!36780 (array_inv!7377 _keys!658)))

(declare-fun b!366919 () Bool)

(declare-fun e!224595 () Bool)

(declare-fun tp_is_empty!8547 () Bool)

(assert (=> b!366919 (= e!224595 tp_is_empty!8547)))

(declare-fun b!366920 () Bool)

(declare-fun res!205428 () Bool)

(assert (=> b!366920 (=> (not res!205428) (not e!224597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21019 (_ BitVec 32)) Bool)

(assert (=> b!366920 (= res!205428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366921 () Bool)

(declare-fun res!205425 () Bool)

(assert (=> b!366921 (=> (not res!205425) (not e!224597))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366921 (= res!205425 (or (= (select (arr!9975 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9975 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14385 () Bool)

(declare-fun tp!28461 () Bool)

(assert (=> mapNonEmpty!14385 (= mapRes!14385 (and tp!28461 e!224595))))

(declare-fun mapValue!14385 () ValueCell!3930)

(declare-fun mapRest!14385 () (Array (_ BitVec 32) ValueCell!3930))

(declare-fun mapKey!14385 () (_ BitVec 32))

(assert (=> mapNonEmpty!14385 (= (arr!9976 _values!506) (store mapRest!14385 mapKey!14385 mapValue!14385))))

(declare-fun b!366922 () Bool)

(assert (=> b!366922 (= e!224596 tp_is_empty!8547)))

(declare-fun b!366923 () Bool)

(assert (=> b!366923 (= e!224597 e!224593)))

(declare-fun res!205432 () Bool)

(assert (=> b!366923 (=> (not res!205432) (not e!224593))))

(assert (=> b!366923 (= res!205432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169290 mask!970))))

(assert (=> b!366923 (= lt!169290 (array!21020 (store (arr!9975 _keys!658) i!548 k0!778) (size!10327 _keys!658)))))

(declare-fun b!366924 () Bool)

(declare-fun res!205429 () Bool)

(assert (=> b!366924 (=> (not res!205429) (not e!224597))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366924 (= res!205429 (and (= (size!10328 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10327 _keys!658) (size!10328 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366925 () Bool)

(declare-fun res!205426 () Bool)

(assert (=> b!366925 (=> (not res!205426) (not e!224597))))

(declare-fun arrayContainsKey!0 (array!21019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366925 (= res!205426 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14385 () Bool)

(assert (=> mapIsEmpty!14385 mapRes!14385))

(declare-fun b!366926 () Bool)

(declare-fun res!205430 () Bool)

(assert (=> b!366926 (=> (not res!205430) (not e!224597))))

(assert (=> b!366926 (= res!205430 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10327 _keys!658))))))

(assert (= (and start!36780 res!205433) b!366924))

(assert (= (and b!366924 res!205429) b!366920))

(assert (= (and b!366920 res!205428) b!366916))

(assert (= (and b!366916 res!205431) b!366926))

(assert (= (and b!366926 res!205430) b!366915))

(assert (= (and b!366915 res!205427) b!366921))

(assert (= (and b!366921 res!205425) b!366925))

(assert (= (and b!366925 res!205426) b!366923))

(assert (= (and b!366923 res!205432) b!366917))

(assert (= (and b!366918 condMapEmpty!14385) mapIsEmpty!14385))

(assert (= (and b!366918 (not condMapEmpty!14385)) mapNonEmpty!14385))

(get-info :version)

(assert (= (and mapNonEmpty!14385 ((_ is ValueCellFull!3930) mapValue!14385)) b!366919))

(assert (= (and b!366918 ((_ is ValueCellFull!3930) mapDefault!14385)) b!366922))

(assert (= start!36780 b!366918))

(declare-fun m!364049 () Bool)

(assert (=> b!366916 m!364049))

(declare-fun m!364051 () Bool)

(assert (=> b!366920 m!364051))

(declare-fun m!364053 () Bool)

(assert (=> mapNonEmpty!14385 m!364053))

(declare-fun m!364055 () Bool)

(assert (=> b!366915 m!364055))

(declare-fun m!364057 () Bool)

(assert (=> b!366921 m!364057))

(declare-fun m!364059 () Bool)

(assert (=> b!366917 m!364059))

(declare-fun m!364061 () Bool)

(assert (=> b!366925 m!364061))

(declare-fun m!364063 () Bool)

(assert (=> start!36780 m!364063))

(declare-fun m!364065 () Bool)

(assert (=> start!36780 m!364065))

(declare-fun m!364067 () Bool)

(assert (=> start!36780 m!364067))

(declare-fun m!364069 () Bool)

(assert (=> b!366923 m!364069))

(declare-fun m!364071 () Bool)

(assert (=> b!366923 m!364071))

(check-sat (not b!366923) (not b!366915) (not start!36780) (not b!366925) tp_is_empty!8547 (not b!366917) (not b!366916) (not mapNonEmpty!14385) (not b!366920))
(check-sat)
