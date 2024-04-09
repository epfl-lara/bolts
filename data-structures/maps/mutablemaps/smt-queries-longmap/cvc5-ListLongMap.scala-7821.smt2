; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97706 () Bool)

(assert start!97706)

(declare-fun b!1116277 () Bool)

(declare-fun e!636054 () Bool)

(declare-fun e!636059 () Bool)

(assert (=> b!1116277 (= e!636054 e!636059)))

(declare-fun res!745401 () Bool)

(assert (=> b!1116277 (=> (not res!745401) (not e!636059))))

(declare-datatypes ((array!72642 0))(
  ( (array!72643 (arr!34970 (Array (_ BitVec 32) (_ BitVec 64))) (size!35507 (_ BitVec 32))) )
))
(declare-fun lt!497091 () array!72642)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72642 (_ BitVec 32)) Bool)

(assert (=> b!1116277 (= res!745401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497091 mask!1564))))

(declare-fun _keys!1208 () array!72642)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116277 (= lt!497091 (array!72643 (store (arr!34970 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35507 _keys!1208)))))

(declare-fun b!1116278 () Bool)

(declare-fun res!745398 () Bool)

(assert (=> b!1116278 (=> (not res!745398) (not e!636054))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42329 0))(
  ( (V!42330 (val!14007 Int)) )
))
(declare-datatypes ((ValueCell!13241 0))(
  ( (ValueCellFull!13241 (v!16641 V!42329)) (EmptyCell!13241) )
))
(declare-datatypes ((array!72644 0))(
  ( (array!72645 (arr!34971 (Array (_ BitVec 32) ValueCell!13241)) (size!35508 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72644)

(assert (=> b!1116278 (= res!745398 (and (= (size!35508 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35507 _keys!1208) (size!35508 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116279 () Bool)

(declare-fun res!745400 () Bool)

(assert (=> b!1116279 (=> (not res!745400) (not e!636054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116279 (= res!745400 (validMask!0 mask!1564))))

(declare-fun b!1116280 () Bool)

(declare-fun res!745392 () Bool)

(assert (=> b!1116280 (=> (not res!745392) (not e!636054))))

(assert (=> b!1116280 (= res!745392 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35507 _keys!1208))))))

(declare-fun b!1116281 () Bool)

(declare-fun e!636056 () Bool)

(declare-fun e!636058 () Bool)

(declare-fun mapRes!43669 () Bool)

(assert (=> b!1116281 (= e!636056 (and e!636058 mapRes!43669))))

(declare-fun condMapEmpty!43669 () Bool)

(declare-fun mapDefault!43669 () ValueCell!13241)

