; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38252 () Bool)

(assert start!38252)

(declare-fun b!394426 () Bool)

(declare-fun res!226165 () Bool)

(declare-fun e!238762 () Bool)

(assert (=> b!394426 (=> (not res!226165) (not e!238762))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394426 (= res!226165 (validMask!0 mask!1025))))

(declare-fun b!394427 () Bool)

(declare-fun e!238761 () Bool)

(declare-fun tp_is_empty!9753 () Bool)

(assert (=> b!394427 (= e!238761 tp_is_empty!9753)))

(declare-fun res!226166 () Bool)

(assert (=> start!38252 (=> (not res!226166) (not e!238762))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23391 0))(
  ( (array!23392 (arr!11149 (Array (_ BitVec 32) (_ BitVec 64))) (size!11501 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23391)

(assert (=> start!38252 (= res!226166 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11501 _keys!709))))))

(assert (=> start!38252 e!238762))

(assert (=> start!38252 true))

(declare-datatypes ((V!14109 0))(
  ( (V!14110 (val!4921 Int)) )
))
(declare-datatypes ((ValueCell!4533 0))(
  ( (ValueCellFull!4533 (v!7162 V!14109)) (EmptyCell!4533) )
))
(declare-datatypes ((array!23393 0))(
  ( (array!23394 (arr!11150 (Array (_ BitVec 32) ValueCell!4533)) (size!11502 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23393)

(declare-fun e!238764 () Bool)

(declare-fun array_inv!8162 (array!23393) Bool)

(assert (=> start!38252 (and (array_inv!8162 _values!549) e!238764)))

(declare-fun array_inv!8163 (array!23391) Bool)

(assert (=> start!38252 (array_inv!8163 _keys!709)))

(declare-fun mapIsEmpty!16230 () Bool)

(declare-fun mapRes!16230 () Bool)

(assert (=> mapIsEmpty!16230 mapRes!16230))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun b!394428 () Bool)

(assert (=> b!394428 (= e!238762 (and (= (size!11502 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11501 _keys!709) (size!11502 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011) (not (= (size!11501 _keys!709) (bvadd #b00000000000000000000000000000001 mask!1025)))))))

(declare-fun b!394429 () Bool)

(assert (=> b!394429 (= e!238764 (and e!238761 mapRes!16230))))

(declare-fun condMapEmpty!16230 () Bool)

(declare-fun mapDefault!16230 () ValueCell!4533)

(assert (=> b!394429 (= condMapEmpty!16230 (= (arr!11150 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4533)) mapDefault!16230)))))

(declare-fun b!394430 () Bool)

(declare-fun e!238760 () Bool)

(assert (=> b!394430 (= e!238760 tp_is_empty!9753)))

(declare-fun mapNonEmpty!16230 () Bool)

(declare-fun tp!32025 () Bool)

(assert (=> mapNonEmpty!16230 (= mapRes!16230 (and tp!32025 e!238760))))

(declare-fun mapRest!16230 () (Array (_ BitVec 32) ValueCell!4533))

(declare-fun mapValue!16230 () ValueCell!4533)

(declare-fun mapKey!16230 () (_ BitVec 32))

(assert (=> mapNonEmpty!16230 (= (arr!11150 _values!549) (store mapRest!16230 mapKey!16230 mapValue!16230))))

(assert (= (and start!38252 res!226166) b!394426))

(assert (= (and b!394426 res!226165) b!394428))

(assert (= (and b!394429 condMapEmpty!16230) mapIsEmpty!16230))

(assert (= (and b!394429 (not condMapEmpty!16230)) mapNonEmpty!16230))

(get-info :version)

(assert (= (and mapNonEmpty!16230 ((_ is ValueCellFull!4533) mapValue!16230)) b!394430))

(assert (= (and b!394429 ((_ is ValueCellFull!4533) mapDefault!16230)) b!394427))

(assert (= start!38252 b!394429))

(declare-fun m!390893 () Bool)

(assert (=> b!394426 m!390893))

(declare-fun m!390895 () Bool)

(assert (=> start!38252 m!390895))

(declare-fun m!390897 () Bool)

(assert (=> start!38252 m!390897))

(declare-fun m!390899 () Bool)

(assert (=> mapNonEmpty!16230 m!390899))

(check-sat (not start!38252) (not b!394426) (not mapNonEmpty!16230) tp_is_empty!9753)
(check-sat)
