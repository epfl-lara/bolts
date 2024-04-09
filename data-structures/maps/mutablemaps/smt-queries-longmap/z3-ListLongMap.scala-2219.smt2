; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36786 () Bool)

(assert start!36786)

(declare-fun b!367023 () Bool)

(declare-fun res!205510 () Bool)

(declare-fun e!224649 () Bool)

(assert (=> b!367023 (=> (not res!205510) (not e!224649))))

(declare-datatypes ((array!21031 0))(
  ( (array!21032 (arr!9981 (Array (_ BitVec 32) (_ BitVec 64))) (size!10333 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21031)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21031 (_ BitVec 32)) Bool)

(assert (=> b!367023 (= res!205510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367024 () Bool)

(declare-fun res!205506 () Bool)

(assert (=> b!367024 (=> (not res!205506) (not e!224649))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12509 0))(
  ( (V!12510 (val!4321 Int)) )
))
(declare-datatypes ((ValueCell!3933 0))(
  ( (ValueCellFull!3933 (v!6514 V!12509)) (EmptyCell!3933) )
))
(declare-datatypes ((array!21033 0))(
  ( (array!21034 (arr!9982 (Array (_ BitVec 32) ValueCell!3933)) (size!10334 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21033)

(assert (=> b!367024 (= res!205506 (and (= (size!10334 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10333 _keys!658) (size!10334 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367025 () Bool)

(declare-fun res!205507 () Bool)

(assert (=> b!367025 (=> (not res!205507) (not e!224649))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367025 (= res!205507 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!367026 () Bool)

(declare-fun res!205513 () Bool)

(assert (=> b!367026 (=> (not res!205513) (not e!224649))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367026 (= res!205513 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10333 _keys!658))))))

(declare-fun b!367027 () Bool)

(declare-fun e!224650 () Bool)

(assert (=> b!367027 (= e!224649 e!224650)))

(declare-fun res!205511 () Bool)

(assert (=> b!367027 (=> (not res!205511) (not e!224650))))

(declare-fun lt!169308 () array!21031)

(assert (=> b!367027 (= res!205511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169308 mask!970))))

(assert (=> b!367027 (= lt!169308 (array!21032 (store (arr!9981 _keys!658) i!548 k0!778) (size!10333 _keys!658)))))

(declare-fun b!367028 () Bool)

(declare-fun res!205514 () Bool)

(assert (=> b!367028 (=> (not res!205514) (not e!224649))))

(declare-datatypes ((List!5582 0))(
  ( (Nil!5579) (Cons!5578 (h!6434 (_ BitVec 64)) (t!10740 List!5582)) )
))
(declare-fun arrayNoDuplicates!0 (array!21031 (_ BitVec 32) List!5582) Bool)

(assert (=> b!367028 (= res!205514 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5579))))

(declare-fun b!367029 () Bool)

(declare-fun res!205509 () Bool)

(assert (=> b!367029 (=> (not res!205509) (not e!224649))))

(assert (=> b!367029 (= res!205509 (or (= (select (arr!9981 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9981 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14394 () Bool)

(declare-fun mapRes!14394 () Bool)

(assert (=> mapIsEmpty!14394 mapRes!14394))

(declare-fun b!367030 () Bool)

(declare-fun e!224647 () Bool)

(declare-fun e!224648 () Bool)

(assert (=> b!367030 (= e!224647 (and e!224648 mapRes!14394))))

(declare-fun condMapEmpty!14394 () Bool)

(declare-fun mapDefault!14394 () ValueCell!3933)

(assert (=> b!367030 (= condMapEmpty!14394 (= (arr!9982 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3933)) mapDefault!14394)))))

(declare-fun res!205508 () Bool)

(assert (=> start!36786 (=> (not res!205508) (not e!224649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36786 (= res!205508 (validMask!0 mask!970))))

(assert (=> start!36786 e!224649))

(assert (=> start!36786 true))

(declare-fun array_inv!7378 (array!21033) Bool)

(assert (=> start!36786 (and (array_inv!7378 _values!506) e!224647)))

(declare-fun array_inv!7379 (array!21031) Bool)

(assert (=> start!36786 (array_inv!7379 _keys!658)))

(declare-fun b!367031 () Bool)

(assert (=> b!367031 (= e!224650 false)))

(declare-fun lt!169309 () Bool)

(assert (=> b!367031 (= lt!169309 (arrayNoDuplicates!0 lt!169308 #b00000000000000000000000000000000 Nil!5579))))

(declare-fun b!367032 () Bool)

(declare-fun e!224651 () Bool)

(declare-fun tp_is_empty!8553 () Bool)

(assert (=> b!367032 (= e!224651 tp_is_empty!8553)))

(declare-fun mapNonEmpty!14394 () Bool)

(declare-fun tp!28470 () Bool)

(assert (=> mapNonEmpty!14394 (= mapRes!14394 (and tp!28470 e!224651))))

(declare-fun mapValue!14394 () ValueCell!3933)

(declare-fun mapRest!14394 () (Array (_ BitVec 32) ValueCell!3933))

(declare-fun mapKey!14394 () (_ BitVec 32))

(assert (=> mapNonEmpty!14394 (= (arr!9982 _values!506) (store mapRest!14394 mapKey!14394 mapValue!14394))))

(declare-fun b!367033 () Bool)

(assert (=> b!367033 (= e!224648 tp_is_empty!8553)))

(declare-fun b!367034 () Bool)

(declare-fun res!205512 () Bool)

(assert (=> b!367034 (=> (not res!205512) (not e!224649))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367034 (= res!205512 (validKeyInArray!0 k0!778))))

(assert (= (and start!36786 res!205508) b!367024))

(assert (= (and b!367024 res!205506) b!367023))

(assert (= (and b!367023 res!205510) b!367028))

(assert (= (and b!367028 res!205514) b!367026))

(assert (= (and b!367026 res!205513) b!367034))

(assert (= (and b!367034 res!205512) b!367029))

(assert (= (and b!367029 res!205509) b!367025))

(assert (= (and b!367025 res!205507) b!367027))

(assert (= (and b!367027 res!205511) b!367031))

(assert (= (and b!367030 condMapEmpty!14394) mapIsEmpty!14394))

(assert (= (and b!367030 (not condMapEmpty!14394)) mapNonEmpty!14394))

(get-info :version)

(assert (= (and mapNonEmpty!14394 ((_ is ValueCellFull!3933) mapValue!14394)) b!367032))

(assert (= (and b!367030 ((_ is ValueCellFull!3933) mapDefault!14394)) b!367033))

(assert (= start!36786 b!367030))

(declare-fun m!364121 () Bool)

(assert (=> b!367029 m!364121))

(declare-fun m!364123 () Bool)

(assert (=> start!36786 m!364123))

(declare-fun m!364125 () Bool)

(assert (=> start!36786 m!364125))

(declare-fun m!364127 () Bool)

(assert (=> start!36786 m!364127))

(declare-fun m!364129 () Bool)

(assert (=> b!367031 m!364129))

(declare-fun m!364131 () Bool)

(assert (=> b!367025 m!364131))

(declare-fun m!364133 () Bool)

(assert (=> mapNonEmpty!14394 m!364133))

(declare-fun m!364135 () Bool)

(assert (=> b!367028 m!364135))

(declare-fun m!364137 () Bool)

(assert (=> b!367027 m!364137))

(declare-fun m!364139 () Bool)

(assert (=> b!367027 m!364139))

(declare-fun m!364141 () Bool)

(assert (=> b!367034 m!364141))

(declare-fun m!364143 () Bool)

(assert (=> b!367023 m!364143))

(check-sat tp_is_empty!8553 (not b!367025) (not b!367027) (not b!367028) (not mapNonEmpty!14394) (not b!367031) (not b!367023) (not b!367034) (not start!36786))
(check-sat)
