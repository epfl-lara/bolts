; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113166 () Bool)

(assert start!113166)

(declare-fun b_free!31181 () Bool)

(declare-fun b_next!31181 () Bool)

(assert (=> start!113166 (= b_free!31181 (not b_next!31181))))

(declare-fun tp!109348 () Bool)

(declare-fun b_and!50279 () Bool)

(assert (=> start!113166 (= tp!109348 b_and!50279)))

(declare-fun b!1341232 () Bool)

(declare-fun res!889866 () Bool)

(declare-fun e!763811 () Bool)

(assert (=> b!1341232 (=> (not res!889866) (not e!763811))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341232 (= res!889866 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341233 () Bool)

(declare-fun res!889860 () Bool)

(assert (=> b!1341233 (=> (not res!889860) (not e!763811))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((V!54677 0))(
  ( (V!54678 (val!18665 Int)) )
))
(declare-datatypes ((ValueCell!17692 0))(
  ( (ValueCellFull!17692 (v!21311 V!54677)) (EmptyCell!17692) )
))
(declare-datatypes ((array!91171 0))(
  ( (array!91172 (arr!44037 (Array (_ BitVec 32) ValueCell!17692)) (size!44588 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91171)

(declare-datatypes ((array!91173 0))(
  ( (array!91174 (arr!44038 (Array (_ BitVec 32) (_ BitVec 64))) (size!44589 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91173)

(assert (=> b!1341233 (= res!889860 (and (= (size!44588 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44589 _keys!1571) (size!44588 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341234 () Bool)

(declare-fun e!763810 () Bool)

(declare-fun e!763808 () Bool)

(declare-fun mapRes!57478 () Bool)

(assert (=> b!1341234 (= e!763810 (and e!763808 mapRes!57478))))

(declare-fun condMapEmpty!57478 () Bool)

(declare-fun mapDefault!57478 () ValueCell!17692)

