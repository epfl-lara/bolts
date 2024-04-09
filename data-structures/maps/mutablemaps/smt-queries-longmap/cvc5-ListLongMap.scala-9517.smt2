; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113000 () Bool)

(assert start!113000)

(declare-fun res!888382 () Bool)

(declare-fun e!762563 () Bool)

(assert (=> start!113000 (=> (not res!888382) (not e!762563))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113000 (= res!888382 (validMask!0 mask!1977))))

(assert (=> start!113000 e!762563))

(assert (=> start!113000 true))

(declare-datatypes ((V!54457 0))(
  ( (V!54458 (val!18582 Int)) )
))
(declare-datatypes ((ValueCell!17609 0))(
  ( (ValueCellFull!17609 (v!21228 V!54457)) (EmptyCell!17609) )
))
(declare-datatypes ((array!90861 0))(
  ( (array!90862 (arr!43882 (Array (_ BitVec 32) ValueCell!17609)) (size!44433 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90861)

(declare-fun e!762566 () Bool)

(declare-fun array_inv!33015 (array!90861) Bool)

(assert (=> start!113000 (and (array_inv!33015 _values!1303) e!762566)))

(declare-datatypes ((array!90863 0))(
  ( (array!90864 (arr!43883 (Array (_ BitVec 32) (_ BitVec 64))) (size!44434 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90863)

(declare-fun array_inv!33016 (array!90863) Bool)

(assert (=> start!113000 (array_inv!33016 _keys!1571)))

(declare-fun b!1338948 () Bool)

(declare-fun res!888383 () Bool)

(assert (=> b!1338948 (=> (not res!888383) (not e!762563))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1338948 (= res!888383 (and (= (size!44433 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44434 _keys!1571) (size!44433 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1338949 () Bool)

(assert (=> b!1338949 (= e!762563 false)))

(declare-fun lt!593758 () Bool)

(declare-datatypes ((List!31266 0))(
  ( (Nil!31263) (Cons!31262 (h!32471 (_ BitVec 64)) (t!45605 List!31266)) )
))
(declare-fun arrayNoDuplicates!0 (array!90863 (_ BitVec 32) List!31266) Bool)

(assert (=> b!1338949 (= lt!593758 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31263))))

(declare-fun b!1338950 () Bool)

(declare-fun res!888381 () Bool)

(assert (=> b!1338950 (=> (not res!888381) (not e!762563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90863 (_ BitVec 32)) Bool)

(assert (=> b!1338950 (= res!888381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1338951 () Bool)

(declare-fun e!762564 () Bool)

(declare-fun mapRes!57229 () Bool)

(assert (=> b!1338951 (= e!762566 (and e!762564 mapRes!57229))))

(declare-fun condMapEmpty!57229 () Bool)

(declare-fun mapDefault!57229 () ValueCell!17609)

