; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35864 () Bool)

(assert start!35864)

(declare-fun b!360244 () Bool)

(declare-fun res!200417 () Bool)

(declare-fun e!220584 () Bool)

(assert (=> b!360244 (=> (not res!200417) (not e!220584))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!20139 0))(
  ( (array!20140 (arr!9560 (Array (_ BitVec 32) (_ BitVec 64))) (size!9912 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20139)

(assert (=> b!360244 (= res!200417 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9912 _keys!1456))))))

(declare-fun b!360245 () Bool)

(declare-fun res!200421 () Bool)

(assert (=> b!360245 (=> (not res!200421) (not e!220584))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360245 (= res!200421 (validKeyInArray!0 k!1077))))

(declare-fun b!360246 () Bool)

(declare-fun res!200415 () Bool)

(assert (=> b!360246 (=> (not res!200415) (not e!220584))))

(declare-fun arrayContainsKey!0 (array!20139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360246 (= res!200415 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!360247 () Bool)

(declare-fun e!220583 () Bool)

(declare-fun tp_is_empty!8309 () Bool)

(assert (=> b!360247 (= e!220583 tp_is_empty!8309)))

(declare-fun b!360248 () Bool)

(declare-fun e!220582 () Bool)

(declare-fun mapRes!13971 () Bool)

(assert (=> b!360248 (= e!220582 (and e!220583 mapRes!13971))))

(declare-fun condMapEmpty!13971 () Bool)

(declare-datatypes ((V!12055 0))(
  ( (V!12056 (val!4199 Int)) )
))
(declare-datatypes ((ValueCell!3811 0))(
  ( (ValueCellFull!3811 (v!6389 V!12055)) (EmptyCell!3811) )
))
(declare-datatypes ((array!20141 0))(
  ( (array!20142 (arr!9561 (Array (_ BitVec 32) ValueCell!3811)) (size!9913 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20141)

(declare-fun mapDefault!13971 () ValueCell!3811)

