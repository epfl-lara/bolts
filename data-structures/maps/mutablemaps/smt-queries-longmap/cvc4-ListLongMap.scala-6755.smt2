; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84766 () Bool)

(assert start!84766)

(declare-fun b_free!20093 () Bool)

(declare-fun b_next!20093 () Bool)

(assert (=> start!84766 (= b_free!20093 (not b_next!20093))))

(declare-fun tp!70079 () Bool)

(declare-fun b_and!32281 () Bool)

(assert (=> start!84766 (= tp!70079 b_and!32281)))

(declare-fun b!990798 () Bool)

(declare-fun e!558736 () Bool)

(declare-fun e!558737 () Bool)

(assert (=> b!990798 (= e!558736 e!558737)))

(declare-fun res!662541 () Bool)

(assert (=> b!990798 (=> (not res!662541) (not e!558737))))

(declare-fun lt!439650 () Bool)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!990798 (= res!662541 (and (or lt!439650 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!439650 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!439650))))))

(assert (=> b!990798 (= lt!439650 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!990799 () Bool)

(declare-fun e!558739 () Bool)

(declare-fun e!558738 () Bool)

(declare-fun mapRes!37016 () Bool)

(assert (=> b!990799 (= e!558739 (and e!558738 mapRes!37016))))

(declare-fun condMapEmpty!37016 () Bool)

(declare-datatypes ((V!36061 0))(
  ( (V!36062 (val!11705 Int)) )
))
(declare-datatypes ((ValueCell!11173 0))(
  ( (ValueCellFull!11173 (v!14278 V!36061)) (EmptyCell!11173) )
))
(declare-datatypes ((array!62569 0))(
  ( (array!62570 (arr!30131 (Array (_ BitVec 32) ValueCell!11173)) (size!30611 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62569)

(declare-fun mapDefault!37016 () ValueCell!11173)

