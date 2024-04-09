; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36642 () Bool)

(assert start!36642)

(declare-fun res!204399 () Bool)

(declare-fun e!223816 () Bool)

(assert (=> start!36642 (=> (not res!204399) (not e!223816))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36642 (= res!204399 (validMask!0 mask!970))))

(assert (=> start!36642 e!223816))

(assert (=> start!36642 true))

(declare-datatypes ((V!12397 0))(
  ( (V!12398 (val!4279 Int)) )
))
(declare-datatypes ((ValueCell!3891 0))(
  ( (ValueCellFull!3891 (v!6471 V!12397)) (EmptyCell!3891) )
))
(declare-datatypes ((array!20869 0))(
  ( (array!20870 (arr!9904 (Array (_ BitVec 32) ValueCell!3891)) (size!10256 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20869)

(declare-fun e!223812 () Bool)

(declare-fun array_inv!7326 (array!20869) Bool)

(assert (=> start!36642 (and (array_inv!7326 _values!506) e!223812)))

(declare-datatypes ((array!20871 0))(
  ( (array!20872 (arr!9905 (Array (_ BitVec 32) (_ BitVec 64))) (size!10257 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20871)

(declare-fun array_inv!7327 (array!20871) Bool)

(assert (=> start!36642 (array_inv!7327 _keys!658)))

(declare-fun mapIsEmpty!14256 () Bool)

(declare-fun mapRes!14256 () Bool)

(assert (=> mapIsEmpty!14256 mapRes!14256))

(declare-fun b!365450 () Bool)

(declare-fun res!204402 () Bool)

(assert (=> b!365450 (=> (not res!204402) (not e!223816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20871 (_ BitVec 32)) Bool)

(assert (=> b!365450 (= res!204402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365451 () Bool)

(declare-fun res!204401 () Bool)

(assert (=> b!365451 (=> (not res!204401) (not e!223816))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365451 (= res!204401 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10257 _keys!658))))))

(declare-fun b!365452 () Bool)

(declare-fun res!204400 () Bool)

(assert (=> b!365452 (=> (not res!204400) (not e!223816))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365452 (= res!204400 (validKeyInArray!0 k0!778))))

(declare-fun b!365453 () Bool)

(declare-fun e!223814 () Bool)

(declare-fun tp_is_empty!8469 () Bool)

(assert (=> b!365453 (= e!223814 tp_is_empty!8469)))

(declare-fun mapNonEmpty!14256 () Bool)

(declare-fun tp!28332 () Bool)

(declare-fun e!223813 () Bool)

(assert (=> mapNonEmpty!14256 (= mapRes!14256 (and tp!28332 e!223813))))

(declare-fun mapValue!14256 () ValueCell!3891)

(declare-fun mapKey!14256 () (_ BitVec 32))

(declare-fun mapRest!14256 () (Array (_ BitVec 32) ValueCell!3891))

(assert (=> mapNonEmpty!14256 (= (arr!9904 _values!506) (store mapRest!14256 mapKey!14256 mapValue!14256))))

(declare-fun b!365454 () Bool)

(declare-fun res!204397 () Bool)

(assert (=> b!365454 (=> (not res!204397) (not e!223816))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365454 (= res!204397 (and (= (size!10256 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10257 _keys!658) (size!10256 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365455 () Bool)

(assert (=> b!365455 (= e!223812 (and e!223814 mapRes!14256))))

(declare-fun condMapEmpty!14256 () Bool)

(declare-fun mapDefault!14256 () ValueCell!3891)

(assert (=> b!365455 (= condMapEmpty!14256 (= (arr!9904 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3891)) mapDefault!14256)))))

(declare-fun b!365456 () Bool)

(assert (=> b!365456 (= e!223813 tp_is_empty!8469)))

(declare-fun b!365457 () Bool)

(declare-fun res!204398 () Bool)

(assert (=> b!365457 (=> (not res!204398) (not e!223816))))

(declare-datatypes ((List!5553 0))(
  ( (Nil!5550) (Cons!5549 (h!6405 (_ BitVec 64)) (t!10711 List!5553)) )
))
(declare-fun arrayNoDuplicates!0 (array!20871 (_ BitVec 32) List!5553) Bool)

(assert (=> b!365457 (= res!204398 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5550))))

(declare-fun b!365458 () Bool)

(assert (=> b!365458 (= e!223816 (and (or (= (select (arr!9905 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9905 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!10257 _keys!658))))))

(assert (= (and start!36642 res!204399) b!365454))

(assert (= (and b!365454 res!204397) b!365450))

(assert (= (and b!365450 res!204402) b!365457))

(assert (= (and b!365457 res!204398) b!365451))

(assert (= (and b!365451 res!204401) b!365452))

(assert (= (and b!365452 res!204400) b!365458))

(assert (= (and b!365455 condMapEmpty!14256) mapIsEmpty!14256))

(assert (= (and b!365455 (not condMapEmpty!14256)) mapNonEmpty!14256))

(get-info :version)

(assert (= (and mapNonEmpty!14256 ((_ is ValueCellFull!3891) mapValue!14256)) b!365456))

(assert (= (and b!365455 ((_ is ValueCellFull!3891) mapDefault!14256)) b!365453))

(assert (= start!36642 b!365455))

(declare-fun m!363129 () Bool)

(assert (=> mapNonEmpty!14256 m!363129))

(declare-fun m!363131 () Bool)

(assert (=> b!365458 m!363131))

(declare-fun m!363133 () Bool)

(assert (=> start!36642 m!363133))

(declare-fun m!363135 () Bool)

(assert (=> start!36642 m!363135))

(declare-fun m!363137 () Bool)

(assert (=> start!36642 m!363137))

(declare-fun m!363139 () Bool)

(assert (=> b!365457 m!363139))

(declare-fun m!363141 () Bool)

(assert (=> b!365452 m!363141))

(declare-fun m!363143 () Bool)

(assert (=> b!365450 m!363143))

(check-sat tp_is_empty!8469 (not mapNonEmpty!14256) (not start!36642) (not b!365457) (not b!365452) (not b!365450))
(check-sat)
