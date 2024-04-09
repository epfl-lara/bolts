; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35416 () Bool)

(assert start!35416)

(declare-fun res!196442 () Bool)

(declare-fun e!217144 () Bool)

(assert (=> start!35416 (=> (not res!196442) (not e!217144))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35416 (= res!196442 (validMask!0 mask!1842))))

(assert (=> start!35416 e!217144))

(assert (=> start!35416 true))

(declare-datatypes ((V!11459 0))(
  ( (V!11460 (val!3975 Int)) )
))
(declare-datatypes ((ValueCell!3587 0))(
  ( (ValueCellFull!3587 (v!6165 V!11459)) (EmptyCell!3587) )
))
(declare-datatypes ((array!19277 0))(
  ( (array!19278 (arr!9129 (Array (_ BitVec 32) ValueCell!3587)) (size!9481 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19277)

(declare-fun e!217141 () Bool)

(declare-fun array_inv!6720 (array!19277) Bool)

(assert (=> start!35416 (and (array_inv!6720 _values!1208) e!217141)))

(declare-datatypes ((array!19279 0))(
  ( (array!19280 (arr!9130 (Array (_ BitVec 32) (_ BitVec 64))) (size!9482 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19279)

(declare-fun array_inv!6721 (array!19279) Bool)

(assert (=> start!35416 (array_inv!6721 _keys!1456)))

(declare-fun b!354255 () Bool)

(assert (=> b!354255 (= e!217144 false)))

(declare-fun lt!165667 () Bool)

(declare-datatypes ((List!5318 0))(
  ( (Nil!5315) (Cons!5314 (h!6170 (_ BitVec 64)) (t!10476 List!5318)) )
))
(declare-fun arrayNoDuplicates!0 (array!19279 (_ BitVec 32) List!5318) Bool)

(assert (=> b!354255 (= lt!165667 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5315))))

(declare-fun mapIsEmpty!13299 () Bool)

(declare-fun mapRes!13299 () Bool)

(assert (=> mapIsEmpty!13299 mapRes!13299))

(declare-fun b!354256 () Bool)

(declare-fun e!217143 () Bool)

(assert (=> b!354256 (= e!217141 (and e!217143 mapRes!13299))))

(declare-fun condMapEmpty!13299 () Bool)

(declare-fun mapDefault!13299 () ValueCell!3587)

