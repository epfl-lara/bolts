; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35872 () Bool)

(assert start!35872)

(declare-fun b!360376 () Bool)

(declare-fun res!200513 () Bool)

(declare-fun e!220642 () Bool)

(assert (=> b!360376 (=> (not res!200513) (not e!220642))))

(declare-datatypes ((array!20155 0))(
  ( (array!20156 (arr!9568 (Array (_ BitVec 32) (_ BitVec 64))) (size!9920 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20155)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360376 (= res!200513 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun res!200514 () Bool)

(assert (=> start!35872 (=> (not res!200514) (not e!220642))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35872 (= res!200514 (validMask!0 mask!1842))))

(assert (=> start!35872 e!220642))

(declare-fun tp_is_empty!8317 () Bool)

(assert (=> start!35872 tp_is_empty!8317))

(assert (=> start!35872 true))

(declare-fun array_inv!7034 (array!20155) Bool)

(assert (=> start!35872 (array_inv!7034 _keys!1456)))

(declare-datatypes ((V!12067 0))(
  ( (V!12068 (val!4203 Int)) )
))
(declare-datatypes ((ValueCell!3815 0))(
  ( (ValueCellFull!3815 (v!6393 V!12067)) (EmptyCell!3815) )
))
(declare-datatypes ((array!20157 0))(
  ( (array!20158 (arr!9569 (Array (_ BitVec 32) ValueCell!3815)) (size!9921 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20157)

(declare-fun e!220645 () Bool)

(declare-fun array_inv!7035 (array!20157) Bool)

(assert (=> start!35872 (and (array_inv!7035 _values!1208) e!220645)))

(declare-fun b!360377 () Bool)

(declare-fun res!200517 () Bool)

(assert (=> b!360377 (=> (not res!200517) (not e!220642))))

(assert (=> b!360377 (= res!200517 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9920 _keys!1456))))))

(declare-fun mapIsEmpty!13983 () Bool)

(declare-fun mapRes!13983 () Bool)

(assert (=> mapIsEmpty!13983 mapRes!13983))

(declare-fun b!360378 () Bool)

(declare-fun res!200515 () Bool)

(assert (=> b!360378 (=> (not res!200515) (not e!220642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360378 (= res!200515 (validKeyInArray!0 k!1077))))

(declare-fun b!360379 () Bool)

(declare-fun res!200516 () Bool)

(assert (=> b!360379 (=> (not res!200516) (not e!220642))))

(assert (=> b!360379 (= res!200516 (not (= (select (arr!9568 _keys!1456) from!1805) k!1077)))))

(declare-fun b!360380 () Bool)

(declare-fun e!220646 () Bool)

(assert (=> b!360380 (= e!220645 (and e!220646 mapRes!13983))))

(declare-fun condMapEmpty!13983 () Bool)

(declare-fun mapDefault!13983 () ValueCell!3815)

