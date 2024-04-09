; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20310 () Bool)

(assert start!20310)

(declare-fun b_free!4957 () Bool)

(declare-fun b_next!4957 () Bool)

(assert (=> start!20310 (= b_free!4957 (not b_next!4957))))

(declare-fun tp!17902 () Bool)

(declare-fun b_and!11721 () Bool)

(assert (=> start!20310 (= tp!17902 b_and!11721)))

(declare-fun b!199860 () Bool)

(declare-fun e!131137 () Bool)

(declare-fun tp_is_empty!4813 () Bool)

(assert (=> b!199860 (= e!131137 tp_is_empty!4813)))

(declare-fun b!199861 () Bool)

(declare-fun res!95112 () Bool)

(declare-fun e!131138 () Bool)

(assert (=> b!199861 (=> (not res!95112) (not e!131138))))

(declare-datatypes ((array!8862 0))(
  ( (array!8863 (arr!4181 (Array (_ BitVec 32) (_ BitVec 64))) (size!4506 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8862)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199861 (= res!95112 (= (select (arr!4181 _keys!825) i!601) k!843))))

(declare-fun res!95113 () Bool)

(assert (=> start!20310 (=> (not res!95113) (not e!131138))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20310 (= res!95113 (validMask!0 mask!1149))))

(assert (=> start!20310 e!131138))

(declare-datatypes ((V!6065 0))(
  ( (V!6066 (val!2451 Int)) )
))
(declare-datatypes ((ValueCell!2063 0))(
  ( (ValueCellFull!2063 (v!4417 V!6065)) (EmptyCell!2063) )
))
(declare-datatypes ((array!8864 0))(
  ( (array!8865 (arr!4182 (Array (_ BitVec 32) ValueCell!2063)) (size!4507 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8864)

(declare-fun e!131139 () Bool)

(declare-fun array_inv!2739 (array!8864) Bool)

(assert (=> start!20310 (and (array_inv!2739 _values!649) e!131139)))

(assert (=> start!20310 true))

(assert (=> start!20310 tp_is_empty!4813))

(declare-fun array_inv!2740 (array!8862) Bool)

(assert (=> start!20310 (array_inv!2740 _keys!825)))

(assert (=> start!20310 tp!17902))

(declare-fun b!199862 () Bool)

(declare-fun res!95107 () Bool)

(assert (=> b!199862 (=> (not res!95107) (not e!131138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199862 (= res!95107 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8288 () Bool)

(declare-fun mapRes!8288 () Bool)

(declare-fun tp!17903 () Bool)

(declare-fun e!131136 () Bool)

(assert (=> mapNonEmpty!8288 (= mapRes!8288 (and tp!17903 e!131136))))

(declare-fun mapValue!8288 () ValueCell!2063)

(declare-fun mapKey!8288 () (_ BitVec 32))

(declare-fun mapRest!8288 () (Array (_ BitVec 32) ValueCell!2063))

(assert (=> mapNonEmpty!8288 (= (arr!4182 _values!649) (store mapRest!8288 mapKey!8288 mapValue!8288))))

(declare-fun b!199863 () Bool)

(declare-fun res!95108 () Bool)

(assert (=> b!199863 (=> (not res!95108) (not e!131138))))

(assert (=> b!199863 (= res!95108 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4506 _keys!825))))))

(declare-fun mapIsEmpty!8288 () Bool)

(assert (=> mapIsEmpty!8288 mapRes!8288))

(declare-fun b!199864 () Bool)

(assert (=> b!199864 (= e!131136 tp_is_empty!4813)))

(declare-fun b!199865 () Bool)

(declare-fun res!95111 () Bool)

(assert (=> b!199865 (=> (not res!95111) (not e!131138))))

(declare-datatypes ((List!2640 0))(
  ( (Nil!2637) (Cons!2636 (h!3278 (_ BitVec 64)) (t!7579 List!2640)) )
))
(declare-fun arrayNoDuplicates!0 (array!8862 (_ BitVec 32) List!2640) Bool)

(assert (=> b!199865 (= res!95111 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2637))))

(declare-fun b!199866 () Bool)

(assert (=> b!199866 (= e!131139 (and e!131137 mapRes!8288))))

(declare-fun condMapEmpty!8288 () Bool)

(declare-fun mapDefault!8288 () ValueCell!2063)

