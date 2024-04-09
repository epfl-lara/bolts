; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35900 () Bool)

(assert start!35900)

(declare-fun res!200682 () Bool)

(declare-fun e!220771 () Bool)

(assert (=> start!35900 (=> (not res!200682) (not e!220771))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35900 (= res!200682 (validMask!0 mask!1842))))

(assert (=> start!35900 e!220771))

(declare-fun tp_is_empty!8329 () Bool)

(assert (=> start!35900 tp_is_empty!8329))

(assert (=> start!35900 true))

(declare-datatypes ((array!20181 0))(
  ( (array!20182 (arr!9580 (Array (_ BitVec 32) (_ BitVec 64))) (size!9932 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20181)

(declare-fun array_inv!7044 (array!20181) Bool)

(assert (=> start!35900 (array_inv!7044 _keys!1456)))

(declare-datatypes ((V!12083 0))(
  ( (V!12084 (val!4209 Int)) )
))
(declare-datatypes ((ValueCell!3821 0))(
  ( (ValueCellFull!3821 (v!6399 V!12083)) (EmptyCell!3821) )
))
(declare-datatypes ((array!20183 0))(
  ( (array!20184 (arr!9581 (Array (_ BitVec 32) ValueCell!3821)) (size!9933 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20183)

(declare-fun e!220770 () Bool)

(declare-fun array_inv!7045 (array!20183) Bool)

(assert (=> start!35900 (and (array_inv!7045 _values!1208) e!220770)))

(declare-fun b!360617 () Bool)

(declare-fun e!220769 () Bool)

(assert (=> b!360617 (= e!220769 tp_is_empty!8329)))

(declare-fun b!360618 () Bool)

(declare-fun res!200678 () Bool)

(assert (=> b!360618 (=> (not res!200678) (not e!220771))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360618 (= res!200678 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!360619 () Bool)

(declare-fun e!220768 () Bool)

(assert (=> b!360619 (= e!220768 tp_is_empty!8329)))

(declare-fun b!360620 () Bool)

(declare-fun mapRes!14004 () Bool)

(assert (=> b!360620 (= e!220770 (and e!220769 mapRes!14004))))

(declare-fun condMapEmpty!14004 () Bool)

(declare-fun mapDefault!14004 () ValueCell!3821)

