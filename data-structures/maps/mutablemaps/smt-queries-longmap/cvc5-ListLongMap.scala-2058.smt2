; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35524 () Bool)

(assert start!35524)

(declare-fun b!355713 () Bool)

(declare-fun e!217951 () Bool)

(declare-fun tp_is_empty!7969 () Bool)

(assert (=> b!355713 (= e!217951 tp_is_empty!7969)))

(declare-fun b!355714 () Bool)

(declare-fun res!197414 () Bool)

(declare-fun e!217953 () Bool)

(assert (=> b!355714 (=> (not res!197414) (not e!217953))))

(declare-datatypes ((array!19483 0))(
  ( (array!19484 (arr!9232 (Array (_ BitVec 32) (_ BitVec 64))) (size!9584 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19483)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19483 (_ BitVec 32)) Bool)

(assert (=> b!355714 (= res!197414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355715 () Bool)

(declare-fun e!217952 () Bool)

(assert (=> b!355715 (= e!217952 tp_is_empty!7969)))

(declare-fun mapIsEmpty!13461 () Bool)

(declare-fun mapRes!13461 () Bool)

(assert (=> mapIsEmpty!13461 mapRes!13461))

(declare-fun b!355716 () Bool)

(declare-fun res!197416 () Bool)

(assert (=> b!355716 (=> (not res!197416) (not e!217953))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11603 0))(
  ( (V!11604 (val!4029 Int)) )
))
(declare-datatypes ((ValueCell!3641 0))(
  ( (ValueCellFull!3641 (v!6219 V!11603)) (EmptyCell!3641) )
))
(declare-datatypes ((array!19485 0))(
  ( (array!19486 (arr!9233 (Array (_ BitVec 32) ValueCell!3641)) (size!9585 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19485)

(assert (=> b!355716 (= res!197416 (and (= (size!9585 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9584 _keys!1456) (size!9585 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!197415 () Bool)

(assert (=> start!35524 (=> (not res!197415) (not e!217953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35524 (= res!197415 (validMask!0 mask!1842))))

(assert (=> start!35524 e!217953))

(assert (=> start!35524 true))

(declare-fun e!217954 () Bool)

(declare-fun array_inv!6798 (array!19485) Bool)

(assert (=> start!35524 (and (array_inv!6798 _values!1208) e!217954)))

(declare-fun array_inv!6799 (array!19483) Bool)

(assert (=> start!35524 (array_inv!6799 _keys!1456)))

(declare-fun mapNonEmpty!13461 () Bool)

(declare-fun tp!27438 () Bool)

(assert (=> mapNonEmpty!13461 (= mapRes!13461 (and tp!27438 e!217951))))

(declare-fun mapValue!13461 () ValueCell!3641)

(declare-fun mapRest!13461 () (Array (_ BitVec 32) ValueCell!3641))

(declare-fun mapKey!13461 () (_ BitVec 32))

(assert (=> mapNonEmpty!13461 (= (arr!9233 _values!1208) (store mapRest!13461 mapKey!13461 mapValue!13461))))

(declare-fun b!355717 () Bool)

(assert (=> b!355717 (= e!217954 (and e!217952 mapRes!13461))))

(declare-fun condMapEmpty!13461 () Bool)

(declare-fun mapDefault!13461 () ValueCell!3641)

