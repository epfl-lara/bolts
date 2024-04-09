; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33874 () Bool)

(assert start!33874)

(declare-fun b_free!7045 () Bool)

(declare-fun b_next!7045 () Bool)

(assert (=> start!33874 (= b_free!7045 (not b_next!7045))))

(declare-fun tp!24648 () Bool)

(declare-fun b_and!14249 () Bool)

(assert (=> start!33874 (= tp!24648 b_and!14249)))

(declare-fun b!336859 () Bool)

(declare-fun res!186076 () Bool)

(declare-fun e!206747 () Bool)

(assert (=> b!336859 (=> (not res!186076) (not e!206747))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10307 0))(
  ( (V!10308 (val!3543 Int)) )
))
(declare-fun zeroValue!1467 () V!10307)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3155 0))(
  ( (ValueCellFull!3155 (v!5704 V!10307)) (EmptyCell!3155) )
))
(declare-datatypes ((array!17571 0))(
  ( (array!17572 (arr!8310 (Array (_ BitVec 32) ValueCell!3155)) (size!8662 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17571)

(declare-datatypes ((array!17573 0))(
  ( (array!17574 (arr!8311 (Array (_ BitVec 32) (_ BitVec 64))) (size!8663 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17573)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10307)

(declare-datatypes ((tuple2!5152 0))(
  ( (tuple2!5153 (_1!2586 (_ BitVec 64)) (_2!2586 V!10307)) )
))
(declare-datatypes ((List!4790 0))(
  ( (Nil!4787) (Cons!4786 (h!5642 tuple2!5152) (t!9892 List!4790)) )
))
(declare-datatypes ((ListLongMap!4079 0))(
  ( (ListLongMap!4080 (toList!2055 List!4790)) )
))
(declare-fun contains!2098 (ListLongMap!4079 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1575 (array!17573 array!17571 (_ BitVec 32) (_ BitVec 32) V!10307 V!10307 (_ BitVec 32) Int) ListLongMap!4079)

(assert (=> b!336859 (= res!186076 (not (contains!2098 (getCurrentListMap!1575 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!11901 () Bool)

(declare-fun mapRes!11901 () Bool)

(assert (=> mapIsEmpty!11901 mapRes!11901))

(declare-fun b!336861 () Bool)

(declare-fun e!206750 () Bool)

(declare-fun e!206748 () Bool)

(assert (=> b!336861 (= e!206750 (and e!206748 mapRes!11901))))

(declare-fun condMapEmpty!11901 () Bool)

(declare-fun mapDefault!11901 () ValueCell!3155)

