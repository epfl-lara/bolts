; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35536 () Bool)

(assert start!35536)

(declare-fun mapIsEmpty!13479 () Bool)

(declare-fun mapRes!13479 () Bool)

(assert (=> mapIsEmpty!13479 mapRes!13479))

(declare-fun res!197468 () Bool)

(declare-fun e!218044 () Bool)

(assert (=> start!35536 (=> (not res!197468) (not e!218044))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35536 (= res!197468 (validMask!0 mask!1842))))

(assert (=> start!35536 e!218044))

(assert (=> start!35536 true))

(declare-datatypes ((V!11619 0))(
  ( (V!11620 (val!4035 Int)) )
))
(declare-datatypes ((ValueCell!3647 0))(
  ( (ValueCellFull!3647 (v!6225 V!11619)) (EmptyCell!3647) )
))
(declare-datatypes ((array!19505 0))(
  ( (array!19506 (arr!9243 (Array (_ BitVec 32) ValueCell!3647)) (size!9595 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19505)

(declare-fun e!218043 () Bool)

(declare-fun array_inv!6808 (array!19505) Bool)

(assert (=> start!35536 (and (array_inv!6808 _values!1208) e!218043)))

(declare-datatypes ((array!19507 0))(
  ( (array!19508 (arr!9244 (Array (_ BitVec 32) (_ BitVec 64))) (size!9596 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19507)

(declare-fun array_inv!6809 (array!19507) Bool)

(assert (=> start!35536 (array_inv!6809 _keys!1456)))

(declare-fun b!355821 () Bool)

(declare-fun e!218042 () Bool)

(declare-fun tp_is_empty!7981 () Bool)

(assert (=> b!355821 (= e!218042 tp_is_empty!7981)))

(declare-fun b!355822 () Bool)

(assert (=> b!355822 (= e!218044 false)))

(declare-fun lt!165847 () Bool)

(declare-datatypes ((List!5376 0))(
  ( (Nil!5373) (Cons!5372 (h!6228 (_ BitVec 64)) (t!10534 List!5376)) )
))
(declare-fun arrayNoDuplicates!0 (array!19507 (_ BitVec 32) List!5376) Bool)

(assert (=> b!355822 (= lt!165847 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5373))))

(declare-fun b!355823 () Bool)

(declare-fun e!218041 () Bool)

(assert (=> b!355823 (= e!218043 (and e!218041 mapRes!13479))))

(declare-fun condMapEmpty!13479 () Bool)

(declare-fun mapDefault!13479 () ValueCell!3647)

