; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113042 () Bool)

(assert start!113042)

(declare-fun b!1339326 () Bool)

(declare-fun res!888571 () Bool)

(declare-fun e!762879 () Bool)

(assert (=> b!1339326 (=> (not res!888571) (not e!762879))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!90933 0))(
  ( (array!90934 (arr!43918 (Array (_ BitVec 32) (_ BitVec 64))) (size!44469 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90933)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54513 0))(
  ( (V!54514 (val!18603 Int)) )
))
(declare-datatypes ((ValueCell!17630 0))(
  ( (ValueCellFull!17630 (v!21249 V!54513)) (EmptyCell!17630) )
))
(declare-datatypes ((array!90935 0))(
  ( (array!90936 (arr!43919 (Array (_ BitVec 32) ValueCell!17630)) (size!44470 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90935)

(assert (=> b!1339326 (= res!888571 (and (= (size!44470 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44469 _keys!1571) (size!44470 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339327 () Bool)

(declare-fun res!888570 () Bool)

(assert (=> b!1339327 (=> (not res!888570) (not e!762879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90933 (_ BitVec 32)) Bool)

(assert (=> b!1339327 (= res!888570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339328 () Bool)

(declare-fun e!762878 () Bool)

(declare-fun e!762877 () Bool)

(declare-fun mapRes!57292 () Bool)

(assert (=> b!1339328 (= e!762878 (and e!762877 mapRes!57292))))

(declare-fun condMapEmpty!57292 () Bool)

(declare-fun mapDefault!57292 () ValueCell!17630)

