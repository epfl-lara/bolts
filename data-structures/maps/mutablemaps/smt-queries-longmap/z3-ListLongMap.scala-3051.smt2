; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43114 () Bool)

(assert start!43114)

(declare-fun mapIsEmpty!21988 () Bool)

(declare-fun mapRes!21988 () Bool)

(assert (=> mapIsEmpty!21988 mapRes!21988))

(declare-datatypes ((array!30719 0))(
  ( (array!30720 (arr!14769 (Array (_ BitVec 32) (_ BitVec 64))) (size!15127 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30719)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun e!280987 () Bool)

(declare-datatypes ((V!19123 0))(
  ( (V!19124 (val!6817 Int)) )
))
(declare-datatypes ((ValueCell!6408 0))(
  ( (ValueCellFull!6408 (v!9101 V!19123)) (EmptyCell!6408) )
))
(declare-datatypes ((array!30721 0))(
  ( (array!30722 (arr!14770 (Array (_ BitVec 32) ValueCell!6408)) (size!15128 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30721)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun b!478024 () Bool)

(assert (=> b!478024 (= e!280987 (and (= (size!15128 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15127 _keys!1874) (size!15128 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011) (not (= (size!15127 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352)))))))

(declare-fun b!478025 () Bool)

(declare-fun e!280990 () Bool)

(declare-fun e!280991 () Bool)

(assert (=> b!478025 (= e!280990 (and e!280991 mapRes!21988))))

(declare-fun condMapEmpty!21988 () Bool)

(declare-fun mapDefault!21988 () ValueCell!6408)

(assert (=> b!478025 (= condMapEmpty!21988 (= (arr!14770 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6408)) mapDefault!21988)))))

(declare-fun mapNonEmpty!21988 () Bool)

(declare-fun tp!42463 () Bool)

(declare-fun e!280988 () Bool)

(assert (=> mapNonEmpty!21988 (= mapRes!21988 (and tp!42463 e!280988))))

(declare-fun mapRest!21988 () (Array (_ BitVec 32) ValueCell!6408))

(declare-fun mapKey!21988 () (_ BitVec 32))

(declare-fun mapValue!21988 () ValueCell!6408)

(assert (=> mapNonEmpty!21988 (= (arr!14770 _values!1516) (store mapRest!21988 mapKey!21988 mapValue!21988))))

(declare-fun b!478026 () Bool)

(declare-fun tp_is_empty!13539 () Bool)

(assert (=> b!478026 (= e!280988 tp_is_empty!13539)))

(declare-fun b!478023 () Bool)

(assert (=> b!478023 (= e!280991 tp_is_empty!13539)))

(declare-fun res!285316 () Bool)

(assert (=> start!43114 (=> (not res!285316) (not e!280987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43114 (= res!285316 (validMask!0 mask!2352))))

(assert (=> start!43114 e!280987))

(assert (=> start!43114 true))

(declare-fun array_inv!10644 (array!30721) Bool)

(assert (=> start!43114 (and (array_inv!10644 _values!1516) e!280990)))

(declare-fun array_inv!10645 (array!30719) Bool)

(assert (=> start!43114 (array_inv!10645 _keys!1874)))

(assert (= (and start!43114 res!285316) b!478024))

(assert (= (and b!478025 condMapEmpty!21988) mapIsEmpty!21988))

(assert (= (and b!478025 (not condMapEmpty!21988)) mapNonEmpty!21988))

(get-info :version)

(assert (= (and mapNonEmpty!21988 ((_ is ValueCellFull!6408) mapValue!21988)) b!478026))

(assert (= (and b!478025 ((_ is ValueCellFull!6408) mapDefault!21988)) b!478023))

(assert (= start!43114 b!478025))

(declare-fun m!460421 () Bool)

(assert (=> mapNonEmpty!21988 m!460421))

(declare-fun m!460423 () Bool)

(assert (=> start!43114 m!460423))

(declare-fun m!460425 () Bool)

(assert (=> start!43114 m!460425))

(declare-fun m!460427 () Bool)

(assert (=> start!43114 m!460427))

(check-sat (not start!43114) (not mapNonEmpty!21988) tp_is_empty!13539)
(check-sat)
