; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111714 () Bool)

(assert start!111714)

(declare-fun b_free!30335 () Bool)

(declare-fun b_next!30335 () Bool)

(assert (=> start!111714 (= b_free!30335 (not b_next!30335))))

(declare-fun tp!106482 () Bool)

(declare-fun b_and!48839 () Bool)

(assert (=> start!111714 (= tp!106482 b_and!48839)))

(declare-fun res!878224 () Bool)

(declare-fun e!754325 () Bool)

(assert (=> start!111714 (=> (not res!878224) (not e!754325))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111714 (= res!878224 (validMask!0 mask!2019))))

(assert (=> start!111714 e!754325))

(declare-datatypes ((array!89185 0))(
  ( (array!89186 (arr!43062 (Array (_ BitVec 32) (_ BitVec 64))) (size!43613 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89185)

(declare-fun array_inv!32465 (array!89185) Bool)

(assert (=> start!111714 (array_inv!32465 _keys!1609)))

(assert (=> start!111714 true))

(declare-fun tp_is_empty!36155 () Bool)

(assert (=> start!111714 tp_is_empty!36155))

(declare-datatypes ((V!53309 0))(
  ( (V!53310 (val!18152 Int)) )
))
(declare-datatypes ((ValueCell!17179 0))(
  ( (ValueCellFull!17179 (v!20780 V!53309)) (EmptyCell!17179) )
))
(declare-datatypes ((array!89187 0))(
  ( (array!89188 (arr!43063 (Array (_ BitVec 32) ValueCell!17179)) (size!43614 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89187)

(declare-fun e!754323 () Bool)

(declare-fun array_inv!32466 (array!89187) Bool)

(assert (=> start!111714 (and (array_inv!32466 _values!1337) e!754323)))

(assert (=> start!111714 tp!106482))

(declare-fun b!1322979 () Bool)

(declare-fun res!878220 () Bool)

(assert (=> b!1322979 (=> (not res!878220) (not e!754325))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322979 (= res!878220 (validKeyInArray!0 (select (arr!43062 _keys!1609) from!2000)))))

(declare-fun b!1322980 () Bool)

(declare-fun e!754327 () Bool)

(declare-fun mapRes!55880 () Bool)

(assert (=> b!1322980 (= e!754323 (and e!754327 mapRes!55880))))

(declare-fun condMapEmpty!55880 () Bool)

(declare-fun mapDefault!55880 () ValueCell!17179)

