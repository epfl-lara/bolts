; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36678 () Bool)

(assert start!36678)

(declare-fun mapIsEmpty!14295 () Bool)

(declare-fun mapRes!14295 () Bool)

(assert (=> mapIsEmpty!14295 mapRes!14295))

(declare-fun b!365785 () Bool)

(declare-fun e!224022 () Bool)

(assert (=> b!365785 (= e!224022 false)))

(declare-fun lt!169182 () Bool)

(declare-datatypes ((array!20915 0))(
  ( (array!20916 (arr!9926 (Array (_ BitVec 32) (_ BitVec 64))) (size!10278 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20915)

(declare-datatypes ((List!5559 0))(
  ( (Nil!5556) (Cons!5555 (h!6411 (_ BitVec 64)) (t!10717 List!5559)) )
))
(declare-fun arrayNoDuplicates!0 (array!20915 (_ BitVec 32) List!5559) Bool)

(assert (=> b!365785 (= lt!169182 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5556))))

(declare-fun mapNonEmpty!14295 () Bool)

(declare-fun tp!28371 () Bool)

(declare-fun e!224020 () Bool)

(assert (=> mapNonEmpty!14295 (= mapRes!14295 (and tp!28371 e!224020))))

(declare-datatypes ((V!12429 0))(
  ( (V!12430 (val!4291 Int)) )
))
(declare-datatypes ((ValueCell!3903 0))(
  ( (ValueCellFull!3903 (v!6483 V!12429)) (EmptyCell!3903) )
))
(declare-datatypes ((array!20917 0))(
  ( (array!20918 (arr!9927 (Array (_ BitVec 32) ValueCell!3903)) (size!10279 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20917)

(declare-fun mapValue!14295 () ValueCell!3903)

(declare-fun mapRest!14295 () (Array (_ BitVec 32) ValueCell!3903))

(declare-fun mapKey!14295 () (_ BitVec 32))

(assert (=> mapNonEmpty!14295 (= (arr!9927 _values!506) (store mapRest!14295 mapKey!14295 mapValue!14295))))

(declare-fun b!365786 () Bool)

(declare-fun res!204604 () Bool)

(assert (=> b!365786 (=> (not res!204604) (not e!224022))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365786 (= res!204604 (and (= (size!10279 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10278 _keys!658) (size!10279 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365787 () Bool)

(declare-fun e!224019 () Bool)

(declare-fun e!224021 () Bool)

(assert (=> b!365787 (= e!224019 (and e!224021 mapRes!14295))))

(declare-fun condMapEmpty!14295 () Bool)

(declare-fun mapDefault!14295 () ValueCell!3903)

(assert (=> b!365787 (= condMapEmpty!14295 (= (arr!9927 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3903)) mapDefault!14295)))))

(declare-fun res!204605 () Bool)

(assert (=> start!36678 (=> (not res!204605) (not e!224022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36678 (= res!204605 (validMask!0 mask!970))))

(assert (=> start!36678 e!224022))

(assert (=> start!36678 true))

(declare-fun array_inv!7340 (array!20917) Bool)

(assert (=> start!36678 (and (array_inv!7340 _values!506) e!224019)))

(declare-fun array_inv!7341 (array!20915) Bool)

(assert (=> start!36678 (array_inv!7341 _keys!658)))

(declare-fun b!365788 () Bool)

(declare-fun res!204606 () Bool)

(assert (=> b!365788 (=> (not res!204606) (not e!224022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20915 (_ BitVec 32)) Bool)

(assert (=> b!365788 (= res!204606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365789 () Bool)

(declare-fun tp_is_empty!8493 () Bool)

(assert (=> b!365789 (= e!224021 tp_is_empty!8493)))

(declare-fun b!365790 () Bool)

(assert (=> b!365790 (= e!224020 tp_is_empty!8493)))

(assert (= (and start!36678 res!204605) b!365786))

(assert (= (and b!365786 res!204604) b!365788))

(assert (= (and b!365788 res!204606) b!365785))

(assert (= (and b!365787 condMapEmpty!14295) mapIsEmpty!14295))

(assert (= (and b!365787 (not condMapEmpty!14295)) mapNonEmpty!14295))

(get-info :version)

(assert (= (and mapNonEmpty!14295 ((_ is ValueCellFull!3903) mapValue!14295)) b!365790))

(assert (= (and b!365787 ((_ is ValueCellFull!3903) mapDefault!14295)) b!365789))

(assert (= start!36678 b!365787))

(declare-fun m!363329 () Bool)

(assert (=> b!365785 m!363329))

(declare-fun m!363331 () Bool)

(assert (=> mapNonEmpty!14295 m!363331))

(declare-fun m!363333 () Bool)

(assert (=> start!36678 m!363333))

(declare-fun m!363335 () Bool)

(assert (=> start!36678 m!363335))

(declare-fun m!363337 () Bool)

(assert (=> start!36678 m!363337))

(declare-fun m!363339 () Bool)

(assert (=> b!365788 m!363339))

(check-sat (not b!365788) (not start!36678) (not b!365785) tp_is_empty!8493 (not mapNonEmpty!14295))
(check-sat)
