; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35470 () Bool)

(assert start!35470)

(declare-fun b_free!7849 () Bool)

(declare-fun b_next!7849 () Bool)

(assert (=> start!35470 (= b_free!7849 (not b_next!7849))))

(declare-fun tp!27333 () Bool)

(declare-fun b_and!15109 () Bool)

(assert (=> start!35470 (= tp!27333 b_and!15109)))

(declare-fun b!355077 () Bool)

(declare-fun res!197028 () Bool)

(declare-fun e!217546 () Bool)

(assert (=> b!355077 (=> (not res!197028) (not e!217546))))

(declare-datatypes ((array!19377 0))(
  ( (array!19378 (arr!9179 (Array (_ BitVec 32) (_ BitVec 64))) (size!9531 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19377)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!355077 (= res!197028 (validKeyInArray!0 (select (arr!9179 _keys!1456) from!1805)))))

(declare-fun b!355078 () Bool)

(declare-fun res!197027 () Bool)

(assert (=> b!355078 (=> (not res!197027) (not e!217546))))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!355078 (= res!197027 (= (select (arr!9179 _keys!1456) from!1805) k!1077))))

(declare-fun res!197025 () Bool)

(assert (=> start!35470 (=> (not res!197025) (not e!217546))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35470 (= res!197025 (validMask!0 mask!1842))))

(assert (=> start!35470 e!217546))

(declare-fun tp_is_empty!7915 () Bool)

(assert (=> start!35470 tp_is_empty!7915))

(assert (=> start!35470 true))

(assert (=> start!35470 tp!27333))

(declare-fun array_inv!6758 (array!19377) Bool)

(assert (=> start!35470 (array_inv!6758 _keys!1456)))

(declare-datatypes ((V!11531 0))(
  ( (V!11532 (val!4002 Int)) )
))
(declare-datatypes ((ValueCell!3614 0))(
  ( (ValueCellFull!3614 (v!6192 V!11531)) (EmptyCell!3614) )
))
(declare-datatypes ((array!19379 0))(
  ( (array!19380 (arr!9180 (Array (_ BitVec 32) ValueCell!3614)) (size!9532 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19379)

(declare-fun e!217547 () Bool)

(declare-fun array_inv!6759 (array!19379) Bool)

(assert (=> start!35470 (and (array_inv!6759 _values!1208) e!217547)))

(declare-fun b!355079 () Bool)

(declare-fun res!197021 () Bool)

(assert (=> b!355079 (=> (not res!197021) (not e!217546))))

(declare-fun arrayContainsKey!0 (array!19377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355079 (= res!197021 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!355080 () Bool)

(declare-fun res!197029 () Bool)

(assert (=> b!355080 (=> (not res!197029) (not e!217546))))

(declare-datatypes ((List!5347 0))(
  ( (Nil!5344) (Cons!5343 (h!6199 (_ BitVec 64)) (t!10505 List!5347)) )
))
(declare-fun arrayNoDuplicates!0 (array!19377 (_ BitVec 32) List!5347) Bool)

(assert (=> b!355080 (= res!197029 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5344))))

(declare-fun mapIsEmpty!13380 () Bool)

(declare-fun mapRes!13380 () Bool)

(assert (=> mapIsEmpty!13380 mapRes!13380))

(declare-fun b!355081 () Bool)

(declare-fun res!197022 () Bool)

(assert (=> b!355081 (=> (not res!197022) (not e!217546))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355081 (= res!197022 (and (= (size!9532 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9531 _keys!1456) (size!9532 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355082 () Bool)

(declare-fun e!217549 () Bool)

(assert (=> b!355082 (= e!217547 (and e!217549 mapRes!13380))))

(declare-fun condMapEmpty!13380 () Bool)

(declare-fun mapDefault!13380 () ValueCell!3614)

