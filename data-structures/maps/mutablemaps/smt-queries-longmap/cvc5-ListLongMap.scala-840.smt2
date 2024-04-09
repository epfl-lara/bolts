; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20148 () Bool)

(assert start!20148)

(declare-fun b_free!4795 () Bool)

(declare-fun b_next!4795 () Bool)

(assert (=> start!20148 (= b_free!4795 (not b_next!4795))))

(declare-fun tp!17417 () Bool)

(declare-fun b_and!11559 () Bool)

(assert (=> start!20148 (= tp!17417 b_and!11559)))

(declare-fun mapIsEmpty!8045 () Bool)

(declare-fun mapRes!8045 () Bool)

(assert (=> mapIsEmpty!8045 mapRes!8045))

(declare-fun b!197430 () Bool)

(declare-fun e!129922 () Bool)

(declare-fun tp_is_empty!4651 () Bool)

(assert (=> b!197430 (= e!129922 tp_is_empty!4651)))

(declare-fun b!197431 () Bool)

(declare-fun res!93409 () Bool)

(declare-fun e!129923 () Bool)

(assert (=> b!197431 (=> (not res!93409) (not e!129923))))

(declare-datatypes ((array!8554 0))(
  ( (array!8555 (arr!4027 (Array (_ BitVec 32) (_ BitVec 64))) (size!4352 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8554)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8554 (_ BitVec 32)) Bool)

(assert (=> b!197431 (= res!93409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197432 () Bool)

(declare-fun e!129924 () Bool)

(assert (=> b!197432 (= e!129924 (and e!129922 mapRes!8045))))

(declare-fun condMapEmpty!8045 () Bool)

(declare-datatypes ((V!5849 0))(
  ( (V!5850 (val!2370 Int)) )
))
(declare-datatypes ((ValueCell!1982 0))(
  ( (ValueCellFull!1982 (v!4336 V!5849)) (EmptyCell!1982) )
))
(declare-datatypes ((array!8556 0))(
  ( (array!8557 (arr!4028 (Array (_ BitVec 32) ValueCell!1982)) (size!4353 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8556)

(declare-fun mapDefault!8045 () ValueCell!1982)

