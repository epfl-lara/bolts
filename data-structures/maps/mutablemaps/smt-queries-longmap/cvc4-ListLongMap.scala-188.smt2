; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3738 () Bool)

(assert start!3738)

(declare-fun b!26154 () Bool)

(declare-fun e!16982 () Bool)

(declare-fun e!16980 () Bool)

(assert (=> b!26154 (= e!16982 e!16980)))

(declare-fun res!15534 () Bool)

(assert (=> b!26154 (=> res!15534 e!16980)))

(declare-datatypes ((List!577 0))(
  ( (Nil!574) (Cons!573 (h!1140 (_ BitVec 64)) (t!3266 List!577)) )
))
(declare-fun contains!228 (List!577 (_ BitVec 64)) Bool)

(assert (=> b!26154 (= res!15534 (contains!228 Nil!574 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!1123 () Bool)

(declare-fun mapRes!1123 () Bool)

(declare-fun tp!3643 () Bool)

(declare-fun e!16979 () Bool)

(assert (=> mapNonEmpty!1123 (= mapRes!1123 (and tp!3643 e!16979))))

(declare-datatypes ((V!1255 0))(
  ( (V!1256 (val!563 Int)) )
))
(declare-datatypes ((ValueCell!337 0))(
  ( (ValueCellFull!337 (v!1648 V!1255)) (EmptyCell!337) )
))
(declare-datatypes ((array!1381 0))(
  ( (array!1382 (arr!649 (Array (_ BitVec 32) ValueCell!337)) (size!750 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1381)

(declare-fun mapValue!1123 () ValueCell!337)

(declare-fun mapRest!1123 () (Array (_ BitVec 32) ValueCell!337))

(declare-fun mapKey!1123 () (_ BitVec 32))

(assert (=> mapNonEmpty!1123 (= (arr!649 _values!1501) (store mapRest!1123 mapKey!1123 mapValue!1123))))

(declare-fun b!26155 () Bool)

(declare-fun e!16981 () Bool)

(declare-fun e!16977 () Bool)

(assert (=> b!26155 (= e!16981 (and e!16977 mapRes!1123))))

(declare-fun condMapEmpty!1123 () Bool)

(declare-fun mapDefault!1123 () ValueCell!337)

