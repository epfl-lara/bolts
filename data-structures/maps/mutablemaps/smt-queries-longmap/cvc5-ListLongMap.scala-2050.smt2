; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35476 () Bool)

(assert start!35476)

(declare-fun b_free!7855 () Bool)

(declare-fun b_next!7855 () Bool)

(assert (=> start!35476 (= b_free!7855 (not b_next!7855))))

(declare-fun tp!27351 () Bool)

(declare-fun b_and!15115 () Bool)

(assert (=> start!35476 (= tp!27351 b_and!15115)))

(declare-fun mapNonEmpty!13389 () Bool)

(declare-fun mapRes!13389 () Bool)

(declare-fun tp!27350 () Bool)

(declare-fun e!217594 () Bool)

(assert (=> mapNonEmpty!13389 (= mapRes!13389 (and tp!27350 e!217594))))

(declare-datatypes ((V!11539 0))(
  ( (V!11540 (val!4005 Int)) )
))
(declare-datatypes ((ValueCell!3617 0))(
  ( (ValueCellFull!3617 (v!6195 V!11539)) (EmptyCell!3617) )
))
(declare-fun mapValue!13389 () ValueCell!3617)

(declare-fun mapRest!13389 () (Array (_ BitVec 32) ValueCell!3617))

(declare-datatypes ((array!19389 0))(
  ( (array!19390 (arr!9185 (Array (_ BitVec 32) ValueCell!3617)) (size!9537 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19389)

(declare-fun mapKey!13389 () (_ BitVec 32))

(assert (=> mapNonEmpty!13389 (= (arr!9185 _values!1208) (store mapRest!13389 mapKey!13389 mapValue!13389))))

(declare-fun mapIsEmpty!13389 () Bool)

(assert (=> mapIsEmpty!13389 mapRes!13389))

(declare-fun b!355185 () Bool)

(declare-fun res!197104 () Bool)

(declare-fun e!217595 () Bool)

(assert (=> b!355185 (=> (not res!197104) (not e!217595))))

(declare-datatypes ((array!19391 0))(
  ( (array!19392 (arr!9186 (Array (_ BitVec 32) (_ BitVec 64))) (size!9538 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19391)

(declare-datatypes ((List!5351 0))(
  ( (Nil!5348) (Cons!5347 (h!6203 (_ BitVec 64)) (t!10509 List!5351)) )
))
(declare-fun arrayNoDuplicates!0 (array!19391 (_ BitVec 32) List!5351) Bool)

(assert (=> b!355185 (= res!197104 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5348))))

(declare-fun res!197103 () Bool)

(assert (=> start!35476 (=> (not res!197103) (not e!217595))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35476 (= res!197103 (validMask!0 mask!1842))))

(assert (=> start!35476 e!217595))

(declare-fun tp_is_empty!7921 () Bool)

(assert (=> start!35476 tp_is_empty!7921))

(assert (=> start!35476 true))

(assert (=> start!35476 tp!27351))

(declare-fun array_inv!6762 (array!19391) Bool)

(assert (=> start!35476 (array_inv!6762 _keys!1456)))

(declare-fun e!217591 () Bool)

(declare-fun array_inv!6763 (array!19389) Bool)

(assert (=> start!35476 (and (array_inv!6763 _values!1208) e!217591)))

(declare-fun b!355186 () Bool)

(declare-fun res!197107 () Bool)

(assert (=> b!355186 (=> (not res!197107) (not e!217595))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!355186 (= res!197107 (= (select (arr!9186 _keys!1456) from!1805) k!1077))))

(declare-fun b!355187 () Bool)

(declare-fun e!217592 () Bool)

(assert (=> b!355187 (= e!217592 tp_is_empty!7921)))

(declare-fun b!355188 () Bool)

(declare-fun res!197106 () Bool)

(assert (=> b!355188 (=> (not res!197106) (not e!217595))))

(assert (=> b!355188 (= res!197106 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9538 _keys!1456))))))

(declare-fun b!355189 () Bool)

(assert (=> b!355189 (= e!217591 (and e!217592 mapRes!13389))))

(declare-fun condMapEmpty!13389 () Bool)

(declare-fun mapDefault!13389 () ValueCell!3617)

