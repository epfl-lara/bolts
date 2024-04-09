; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35788 () Bool)

(assert start!35788)

(declare-fun b!359205 () Bool)

(declare-fun res!199719 () Bool)

(declare-fun e!220015 () Bool)

(assert (=> b!359205 (=> (not res!199719) (not e!220015))))

(declare-datatypes ((array!19987 0))(
  ( (array!19988 (arr!9484 (Array (_ BitVec 32) (_ BitVec 64))) (size!9836 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19987)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19987 (_ BitVec 32)) Bool)

(assert (=> b!359205 (= res!199719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359206 () Bool)

(assert (=> b!359206 (= e!220015 false)))

(declare-fun lt!166297 () Bool)

(declare-datatypes ((List!5489 0))(
  ( (Nil!5486) (Cons!5485 (h!6341 (_ BitVec 64)) (t!10647 List!5489)) )
))
(declare-fun arrayNoDuplicates!0 (array!19987 (_ BitVec 32) List!5489) Bool)

(assert (=> b!359206 (= lt!166297 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5486))))

(declare-fun mapNonEmpty!13857 () Bool)

(declare-fun mapRes!13857 () Bool)

(declare-fun tp!27924 () Bool)

(declare-fun e!220014 () Bool)

(assert (=> mapNonEmpty!13857 (= mapRes!13857 (and tp!27924 e!220014))))

(declare-fun mapKey!13857 () (_ BitVec 32))

(declare-datatypes ((V!11955 0))(
  ( (V!11956 (val!4161 Int)) )
))
(declare-datatypes ((ValueCell!3773 0))(
  ( (ValueCellFull!3773 (v!6351 V!11955)) (EmptyCell!3773) )
))
(declare-fun mapValue!13857 () ValueCell!3773)

(declare-datatypes ((array!19989 0))(
  ( (array!19990 (arr!9485 (Array (_ BitVec 32) ValueCell!3773)) (size!9837 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19989)

(declare-fun mapRest!13857 () (Array (_ BitVec 32) ValueCell!3773))

(assert (=> mapNonEmpty!13857 (= (arr!9485 _values!1208) (store mapRest!13857 mapKey!13857 mapValue!13857))))

(declare-fun mapIsEmpty!13857 () Bool)

(assert (=> mapIsEmpty!13857 mapRes!13857))

(declare-fun b!359207 () Bool)

(declare-fun tp_is_empty!8233 () Bool)

(assert (=> b!359207 (= e!220014 tp_is_empty!8233)))

(declare-fun b!359208 () Bool)

(declare-fun e!220016 () Bool)

(assert (=> b!359208 (= e!220016 tp_is_empty!8233)))

(declare-fun b!359209 () Bool)

(declare-fun e!220012 () Bool)

(assert (=> b!359209 (= e!220012 (and e!220016 mapRes!13857))))

(declare-fun condMapEmpty!13857 () Bool)

(declare-fun mapDefault!13857 () ValueCell!3773)

