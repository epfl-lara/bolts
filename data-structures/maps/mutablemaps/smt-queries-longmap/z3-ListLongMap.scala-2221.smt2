; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36798 () Bool)

(assert start!36798)

(declare-fun b!367239 () Bool)

(declare-fun e!224756 () Bool)

(assert (=> b!367239 (= e!224756 false)))

(declare-fun lt!169345 () Bool)

(declare-datatypes ((array!21055 0))(
  ( (array!21056 (arr!9993 (Array (_ BitVec 32) (_ BitVec 64))) (size!10345 (_ BitVec 32))) )
))
(declare-fun lt!169344 () array!21055)

(declare-datatypes ((List!5588 0))(
  ( (Nil!5585) (Cons!5584 (h!6440 (_ BitVec 64)) (t!10746 List!5588)) )
))
(declare-fun arrayNoDuplicates!0 (array!21055 (_ BitVec 32) List!5588) Bool)

(assert (=> b!367239 (= lt!169345 (arrayNoDuplicates!0 lt!169344 #b00000000000000000000000000000000 Nil!5585))))

(declare-fun b!367240 () Bool)

(declare-fun res!205669 () Bool)

(declare-fun e!224757 () Bool)

(assert (=> b!367240 (=> (not res!205669) (not e!224757))))

(declare-fun _keys!658 () array!21055)

(assert (=> b!367240 (= res!205669 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5585))))

(declare-fun b!367241 () Bool)

(declare-fun e!224758 () Bool)

(declare-fun tp_is_empty!8565 () Bool)

(assert (=> b!367241 (= e!224758 tp_is_empty!8565)))

(declare-fun b!367242 () Bool)

(declare-fun e!224759 () Bool)

(declare-fun mapRes!14412 () Bool)

(assert (=> b!367242 (= e!224759 (and e!224758 mapRes!14412))))

(declare-fun condMapEmpty!14412 () Bool)

(declare-datatypes ((V!12525 0))(
  ( (V!12526 (val!4327 Int)) )
))
(declare-datatypes ((ValueCell!3939 0))(
  ( (ValueCellFull!3939 (v!6520 V!12525)) (EmptyCell!3939) )
))
(declare-datatypes ((array!21057 0))(
  ( (array!21058 (arr!9994 (Array (_ BitVec 32) ValueCell!3939)) (size!10346 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21057)

(declare-fun mapDefault!14412 () ValueCell!3939)

(assert (=> b!367242 (= condMapEmpty!14412 (= (arr!9994 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3939)) mapDefault!14412)))))

(declare-fun b!367243 () Bool)

(declare-fun res!205676 () Bool)

(assert (=> b!367243 (=> (not res!205676) (not e!224757))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367243 (= res!205676 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!205672 () Bool)

(assert (=> start!36798 (=> (not res!205672) (not e!224757))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36798 (= res!205672 (validMask!0 mask!970))))

(assert (=> start!36798 e!224757))

(assert (=> start!36798 true))

(declare-fun array_inv!7386 (array!21057) Bool)

(assert (=> start!36798 (and (array_inv!7386 _values!506) e!224759)))

(declare-fun array_inv!7387 (array!21055) Bool)

(assert (=> start!36798 (array_inv!7387 _keys!658)))

(declare-fun b!367244 () Bool)

(assert (=> b!367244 (= e!224757 e!224756)))

(declare-fun res!205671 () Bool)

(assert (=> b!367244 (=> (not res!205671) (not e!224756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21055 (_ BitVec 32)) Bool)

(assert (=> b!367244 (= res!205671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169344 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367244 (= lt!169344 (array!21056 (store (arr!9993 _keys!658) i!548 k0!778) (size!10345 _keys!658)))))

(declare-fun b!367245 () Bool)

(declare-fun res!205673 () Bool)

(assert (=> b!367245 (=> (not res!205673) (not e!224757))))

(assert (=> b!367245 (= res!205673 (or (= (select (arr!9993 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9993 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367246 () Bool)

(declare-fun res!205668 () Bool)

(assert (=> b!367246 (=> (not res!205668) (not e!224757))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!367246 (= res!205668 (and (= (size!10346 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10345 _keys!658) (size!10346 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367247 () Bool)

(declare-fun e!224755 () Bool)

(assert (=> b!367247 (= e!224755 tp_is_empty!8565)))

(declare-fun b!367248 () Bool)

(declare-fun res!205670 () Bool)

(assert (=> b!367248 (=> (not res!205670) (not e!224757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367248 (= res!205670 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14412 () Bool)

(assert (=> mapIsEmpty!14412 mapRes!14412))

(declare-fun b!367249 () Bool)

(declare-fun res!205675 () Bool)

(assert (=> b!367249 (=> (not res!205675) (not e!224757))))

(assert (=> b!367249 (= res!205675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367250 () Bool)

(declare-fun res!205674 () Bool)

(assert (=> b!367250 (=> (not res!205674) (not e!224757))))

(assert (=> b!367250 (= res!205674 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10345 _keys!658))))))

(declare-fun mapNonEmpty!14412 () Bool)

(declare-fun tp!28488 () Bool)

(assert (=> mapNonEmpty!14412 (= mapRes!14412 (and tp!28488 e!224755))))

(declare-fun mapKey!14412 () (_ BitVec 32))

(declare-fun mapValue!14412 () ValueCell!3939)

(declare-fun mapRest!14412 () (Array (_ BitVec 32) ValueCell!3939))

(assert (=> mapNonEmpty!14412 (= (arr!9994 _values!506) (store mapRest!14412 mapKey!14412 mapValue!14412))))

(assert (= (and start!36798 res!205672) b!367246))

(assert (= (and b!367246 res!205668) b!367249))

(assert (= (and b!367249 res!205675) b!367240))

(assert (= (and b!367240 res!205669) b!367250))

(assert (= (and b!367250 res!205674) b!367248))

(assert (= (and b!367248 res!205670) b!367245))

(assert (= (and b!367245 res!205673) b!367243))

(assert (= (and b!367243 res!205676) b!367244))

(assert (= (and b!367244 res!205671) b!367239))

(assert (= (and b!367242 condMapEmpty!14412) mapIsEmpty!14412))

(assert (= (and b!367242 (not condMapEmpty!14412)) mapNonEmpty!14412))

(get-info :version)

(assert (= (and mapNonEmpty!14412 ((_ is ValueCellFull!3939) mapValue!14412)) b!367247))

(assert (= (and b!367242 ((_ is ValueCellFull!3939) mapDefault!14412)) b!367241))

(assert (= start!36798 b!367242))

(declare-fun m!364265 () Bool)

(assert (=> mapNonEmpty!14412 m!364265))

(declare-fun m!364267 () Bool)

(assert (=> b!367240 m!364267))

(declare-fun m!364269 () Bool)

(assert (=> b!367244 m!364269))

(declare-fun m!364271 () Bool)

(assert (=> b!367244 m!364271))

(declare-fun m!364273 () Bool)

(assert (=> b!367249 m!364273))

(declare-fun m!364275 () Bool)

(assert (=> start!36798 m!364275))

(declare-fun m!364277 () Bool)

(assert (=> start!36798 m!364277))

(declare-fun m!364279 () Bool)

(assert (=> start!36798 m!364279))

(declare-fun m!364281 () Bool)

(assert (=> b!367243 m!364281))

(declare-fun m!364283 () Bool)

(assert (=> b!367239 m!364283))

(declare-fun m!364285 () Bool)

(assert (=> b!367245 m!364285))

(declare-fun m!364287 () Bool)

(assert (=> b!367248 m!364287))

(check-sat (not b!367243) (not b!367249) (not b!367239) (not start!36798) (not mapNonEmpty!14412) (not b!367240) (not b!367244) tp_is_empty!8565 (not b!367248))
(check-sat)
