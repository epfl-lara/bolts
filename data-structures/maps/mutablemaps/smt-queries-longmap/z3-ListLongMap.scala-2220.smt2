; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36792 () Bool)

(assert start!36792)

(declare-fun res!205595 () Bool)

(declare-fun e!224703 () Bool)

(assert (=> start!36792 (=> (not res!205595) (not e!224703))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36792 (= res!205595 (validMask!0 mask!970))))

(assert (=> start!36792 e!224703))

(assert (=> start!36792 true))

(declare-datatypes ((V!12517 0))(
  ( (V!12518 (val!4324 Int)) )
))
(declare-datatypes ((ValueCell!3936 0))(
  ( (ValueCellFull!3936 (v!6517 V!12517)) (EmptyCell!3936) )
))
(declare-datatypes ((array!21043 0))(
  ( (array!21044 (arr!9987 (Array (_ BitVec 32) ValueCell!3936)) (size!10339 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21043)

(declare-fun e!224704 () Bool)

(declare-fun array_inv!7382 (array!21043) Bool)

(assert (=> start!36792 (and (array_inv!7382 _values!506) e!224704)))

(declare-datatypes ((array!21045 0))(
  ( (array!21046 (arr!9988 (Array (_ BitVec 32) (_ BitVec 64))) (size!10340 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21045)

(declare-fun array_inv!7383 (array!21045) Bool)

(assert (=> start!36792 (array_inv!7383 _keys!658)))

(declare-fun b!367131 () Bool)

(declare-fun res!205587 () Bool)

(assert (=> b!367131 (=> (not res!205587) (not e!224703))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!367131 (= res!205587 (and (= (size!10339 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10340 _keys!658) (size!10339 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367132 () Bool)

(declare-fun res!205592 () Bool)

(assert (=> b!367132 (=> (not res!205592) (not e!224703))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367132 (= res!205592 (validKeyInArray!0 k0!778))))

(declare-fun b!367133 () Bool)

(declare-fun e!224701 () Bool)

(assert (=> b!367133 (= e!224703 e!224701)))

(declare-fun res!205589 () Bool)

(assert (=> b!367133 (=> (not res!205589) (not e!224701))))

(declare-fun lt!169327 () array!21045)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21045 (_ BitVec 32)) Bool)

(assert (=> b!367133 (= res!205589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169327 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367133 (= lt!169327 (array!21046 (store (arr!9988 _keys!658) i!548 k0!778) (size!10340 _keys!658)))))

(declare-fun b!367134 () Bool)

(declare-fun res!205593 () Bool)

(assert (=> b!367134 (=> (not res!205593) (not e!224703))))

(declare-datatypes ((List!5585 0))(
  ( (Nil!5582) (Cons!5581 (h!6437 (_ BitVec 64)) (t!10743 List!5585)) )
))
(declare-fun arrayNoDuplicates!0 (array!21045 (_ BitVec 32) List!5585) Bool)

(assert (=> b!367134 (= res!205593 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5582))))

(declare-fun b!367135 () Bool)

(declare-fun e!224706 () Bool)

(declare-fun mapRes!14403 () Bool)

(assert (=> b!367135 (= e!224704 (and e!224706 mapRes!14403))))

(declare-fun condMapEmpty!14403 () Bool)

(declare-fun mapDefault!14403 () ValueCell!3936)

(assert (=> b!367135 (= condMapEmpty!14403 (= (arr!9987 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3936)) mapDefault!14403)))))

(declare-fun b!367136 () Bool)

(declare-fun res!205594 () Bool)

(assert (=> b!367136 (=> (not res!205594) (not e!224703))))

(assert (=> b!367136 (= res!205594 (or (= (select (arr!9988 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9988 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367137 () Bool)

(declare-fun res!205591 () Bool)

(assert (=> b!367137 (=> (not res!205591) (not e!224703))))

(assert (=> b!367137 (= res!205591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367138 () Bool)

(declare-fun res!205590 () Bool)

(assert (=> b!367138 (=> (not res!205590) (not e!224703))))

(assert (=> b!367138 (= res!205590 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10340 _keys!658))))))

(declare-fun b!367139 () Bool)

(declare-fun e!224702 () Bool)

(declare-fun tp_is_empty!8559 () Bool)

(assert (=> b!367139 (= e!224702 tp_is_empty!8559)))

(declare-fun mapNonEmpty!14403 () Bool)

(declare-fun tp!28479 () Bool)

(assert (=> mapNonEmpty!14403 (= mapRes!14403 (and tp!28479 e!224702))))

(declare-fun mapValue!14403 () ValueCell!3936)

(declare-fun mapRest!14403 () (Array (_ BitVec 32) ValueCell!3936))

(declare-fun mapKey!14403 () (_ BitVec 32))

(assert (=> mapNonEmpty!14403 (= (arr!9987 _values!506) (store mapRest!14403 mapKey!14403 mapValue!14403))))

(declare-fun b!367140 () Bool)

(assert (=> b!367140 (= e!224701 false)))

(declare-fun lt!169326 () Bool)

(assert (=> b!367140 (= lt!169326 (arrayNoDuplicates!0 lt!169327 #b00000000000000000000000000000000 Nil!5582))))

(declare-fun mapIsEmpty!14403 () Bool)

(assert (=> mapIsEmpty!14403 mapRes!14403))

(declare-fun b!367141 () Bool)

(declare-fun res!205588 () Bool)

(assert (=> b!367141 (=> (not res!205588) (not e!224703))))

(declare-fun arrayContainsKey!0 (array!21045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367141 (= res!205588 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!367142 () Bool)

(assert (=> b!367142 (= e!224706 tp_is_empty!8559)))

(assert (= (and start!36792 res!205595) b!367131))

(assert (= (and b!367131 res!205587) b!367137))

(assert (= (and b!367137 res!205591) b!367134))

(assert (= (and b!367134 res!205593) b!367138))

(assert (= (and b!367138 res!205590) b!367132))

(assert (= (and b!367132 res!205592) b!367136))

(assert (= (and b!367136 res!205594) b!367141))

(assert (= (and b!367141 res!205588) b!367133))

(assert (= (and b!367133 res!205589) b!367140))

(assert (= (and b!367135 condMapEmpty!14403) mapIsEmpty!14403))

(assert (= (and b!367135 (not condMapEmpty!14403)) mapNonEmpty!14403))

(get-info :version)

(assert (= (and mapNonEmpty!14403 ((_ is ValueCellFull!3936) mapValue!14403)) b!367139))

(assert (= (and b!367135 ((_ is ValueCellFull!3936) mapDefault!14403)) b!367142))

(assert (= start!36792 b!367135))

(declare-fun m!364193 () Bool)

(assert (=> b!367141 m!364193))

(declare-fun m!364195 () Bool)

(assert (=> start!36792 m!364195))

(declare-fun m!364197 () Bool)

(assert (=> start!36792 m!364197))

(declare-fun m!364199 () Bool)

(assert (=> start!36792 m!364199))

(declare-fun m!364201 () Bool)

(assert (=> b!367133 m!364201))

(declare-fun m!364203 () Bool)

(assert (=> b!367133 m!364203))

(declare-fun m!364205 () Bool)

(assert (=> b!367137 m!364205))

(declare-fun m!364207 () Bool)

(assert (=> mapNonEmpty!14403 m!364207))

(declare-fun m!364209 () Bool)

(assert (=> b!367140 m!364209))

(declare-fun m!364211 () Bool)

(assert (=> b!367134 m!364211))

(declare-fun m!364213 () Bool)

(assert (=> b!367132 m!364213))

(declare-fun m!364215 () Bool)

(assert (=> b!367136 m!364215))

(check-sat (not mapNonEmpty!14403) (not b!367133) (not start!36792) tp_is_empty!8559 (not b!367137) (not b!367140) (not b!367141) (not b!367134) (not b!367132))
(check-sat)
