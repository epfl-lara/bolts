; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35492 () Bool)

(assert start!35492)

(declare-fun mapNonEmpty!13413 () Bool)

(declare-fun mapRes!13413 () Bool)

(declare-fun tp!27390 () Bool)

(declare-fun e!217711 () Bool)

(assert (=> mapNonEmpty!13413 (= mapRes!13413 (and tp!27390 e!217711))))

(declare-datatypes ((V!11559 0))(
  ( (V!11560 (val!4013 Int)) )
))
(declare-datatypes ((ValueCell!3625 0))(
  ( (ValueCellFull!3625 (v!6203 V!11559)) (EmptyCell!3625) )
))
(declare-fun mapValue!13413 () ValueCell!3625)

(declare-fun mapRest!13413 () (Array (_ BitVec 32) ValueCell!3625))

(declare-datatypes ((array!19421 0))(
  ( (array!19422 (arr!9201 (Array (_ BitVec 32) ValueCell!3625)) (size!9553 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19421)

(declare-fun mapKey!13413 () (_ BitVec 32))

(assert (=> mapNonEmpty!13413 (= (arr!9201 _values!1208) (store mapRest!13413 mapKey!13413 mapValue!13413))))

(declare-fun mapIsEmpty!13413 () Bool)

(assert (=> mapIsEmpty!13413 mapRes!13413))

(declare-fun b!355425 () Bool)

(declare-fun e!217713 () Bool)

(assert (=> b!355425 (= e!217713 false)))

(declare-fun lt!165781 () Bool)

(declare-datatypes ((array!19423 0))(
  ( (array!19424 (arr!9202 (Array (_ BitVec 32) (_ BitVec 64))) (size!9554 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19423)

(declare-datatypes ((List!5361 0))(
  ( (Nil!5358) (Cons!5357 (h!6213 (_ BitVec 64)) (t!10519 List!5361)) )
))
(declare-fun arrayNoDuplicates!0 (array!19423 (_ BitVec 32) List!5361) Bool)

(assert (=> b!355425 (= lt!165781 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5358))))

(declare-fun b!355426 () Bool)

(declare-fun e!217715 () Bool)

(declare-fun e!217712 () Bool)

(assert (=> b!355426 (= e!217715 (and e!217712 mapRes!13413))))

(declare-fun condMapEmpty!13413 () Bool)

(declare-fun mapDefault!13413 () ValueCell!3625)

