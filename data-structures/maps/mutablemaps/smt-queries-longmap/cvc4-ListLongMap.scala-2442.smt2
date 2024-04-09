; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38482 () Bool)

(assert start!38482)

(declare-fun b!396945 () Bool)

(declare-fun res!227927 () Bool)

(declare-fun e!240113 () Bool)

(assert (=> b!396945 (=> (not res!227927) (not e!240113))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396945 (= res!227927 (validKeyInArray!0 k!794))))

(declare-fun b!396946 () Bool)

(declare-fun res!227928 () Bool)

(assert (=> b!396946 (=> (not res!227928) (not e!240113))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14295 0))(
  ( (V!14296 (val!4991 Int)) )
))
(declare-datatypes ((ValueCell!4603 0))(
  ( (ValueCellFull!4603 (v!7234 V!14295)) (EmptyCell!4603) )
))
(declare-datatypes ((array!23669 0))(
  ( (array!23670 (arr!11281 (Array (_ BitVec 32) ValueCell!4603)) (size!11633 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23669)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23671 0))(
  ( (array!23672 (arr!11282 (Array (_ BitVec 32) (_ BitVec 64))) (size!11634 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23671)

(assert (=> b!396946 (= res!227928 (and (= (size!11633 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11634 _keys!709) (size!11633 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396947 () Bool)

(declare-fun e!240112 () Bool)

(declare-fun e!240110 () Bool)

(declare-fun mapRes!16461 () Bool)

(assert (=> b!396947 (= e!240112 (and e!240110 mapRes!16461))))

(declare-fun condMapEmpty!16461 () Bool)

(declare-fun mapDefault!16461 () ValueCell!4603)

