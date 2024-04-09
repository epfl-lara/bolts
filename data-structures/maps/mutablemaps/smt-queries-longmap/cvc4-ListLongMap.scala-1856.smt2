; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33528 () Bool)

(assert start!33528)

(declare-fun b_free!6809 () Bool)

(declare-fun b_next!6809 () Bool)

(assert (=> start!33528 (= b_free!6809 (not b_next!6809))))

(declare-fun tp!23922 () Bool)

(declare-fun b_and!14001 () Bool)

(assert (=> start!33528 (= tp!23922 b_and!14001)))

(declare-fun b!332443 () Bool)

(declare-fun res!183218 () Bool)

(declare-fun e!204159 () Bool)

(assert (=> b!332443 (=> (not res!183218) (not e!204159))))

(declare-datatypes ((array!17115 0))(
  ( (array!17116 (arr!8088 (Array (_ BitVec 32) (_ BitVec 64))) (size!8440 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17115)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17115 (_ BitVec 32)) Bool)

(assert (=> b!332443 (= res!183218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332444 () Bool)

(declare-fun e!204160 () Bool)

(declare-fun tp_is_empty!6761 () Bool)

(assert (=> b!332444 (= e!204160 tp_is_empty!6761)))

(declare-fun b!332445 () Bool)

(declare-fun e!204162 () Bool)

(assert (=> b!332445 (= e!204162 tp_is_empty!6761)))

(declare-fun mapIsEmpty!11529 () Bool)

(declare-fun mapRes!11529 () Bool)

(assert (=> mapIsEmpty!11529 mapRes!11529))

(declare-fun mapNonEmpty!11529 () Bool)

(declare-fun tp!23921 () Bool)

(assert (=> mapNonEmpty!11529 (= mapRes!11529 (and tp!23921 e!204162))))

(declare-datatypes ((V!9991 0))(
  ( (V!9992 (val!3425 Int)) )
))
(declare-datatypes ((ValueCell!3037 0))(
  ( (ValueCellFull!3037 (v!5580 V!9991)) (EmptyCell!3037) )
))
(declare-fun mapValue!11529 () ValueCell!3037)

(declare-datatypes ((array!17117 0))(
  ( (array!17118 (arr!8089 (Array (_ BitVec 32) ValueCell!3037)) (size!8441 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17117)

(declare-fun mapKey!11529 () (_ BitVec 32))

(declare-fun mapRest!11529 () (Array (_ BitVec 32) ValueCell!3037))

(assert (=> mapNonEmpty!11529 (= (arr!8089 _values!1525) (store mapRest!11529 mapKey!11529 mapValue!11529))))

(declare-fun b!332447 () Bool)

(declare-fun res!183215 () Bool)

(assert (=> b!332447 (=> (not res!183215) (not e!204159))))

(declare-datatypes ((List!4622 0))(
  ( (Nil!4619) (Cons!4618 (h!5474 (_ BitVec 64)) (t!9712 List!4622)) )
))
(declare-fun arrayNoDuplicates!0 (array!17115 (_ BitVec 32) List!4622) Bool)

(assert (=> b!332447 (= res!183215 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4619))))

(declare-fun b!332448 () Bool)

(assert (=> b!332448 (= e!204159 false)))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!9991)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun lt!158997 () Bool)

(declare-fun minValue!1467 () V!9991)

(declare-datatypes ((tuple2!4984 0))(
  ( (tuple2!4985 (_1!2502 (_ BitVec 64)) (_2!2502 V!9991)) )
))
(declare-datatypes ((List!4623 0))(
  ( (Nil!4620) (Cons!4619 (h!5475 tuple2!4984) (t!9713 List!4623)) )
))
(declare-datatypes ((ListLongMap!3911 0))(
  ( (ListLongMap!3912 (toList!1971 List!4623)) )
))
(declare-fun contains!2008 (ListLongMap!3911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1494 (array!17115 array!17117 (_ BitVec 32) (_ BitVec 32) V!9991 V!9991 (_ BitVec 32) Int) ListLongMap!3911)

(assert (=> b!332448 (= lt!158997 (contains!2008 (getCurrentListMap!1494 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348))))

(declare-fun b!332449 () Bool)

(declare-fun res!183216 () Bool)

(assert (=> b!332449 (=> (not res!183216) (not e!204159))))

(assert (=> b!332449 (= res!183216 (and (= (size!8441 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8440 _keys!1895) (size!8441 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332450 () Bool)

(declare-fun e!204161 () Bool)

(assert (=> b!332450 (= e!204161 (and e!204160 mapRes!11529))))

(declare-fun condMapEmpty!11529 () Bool)

(declare-fun mapDefault!11529 () ValueCell!3037)

