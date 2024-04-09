; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82760 () Bool)

(assert start!82760)

(declare-fun b_free!18865 () Bool)

(declare-fun b_next!18865 () Bool)

(assert (=> start!82760 (= b_free!18865 (not b_next!18865))))

(declare-fun tp!65716 () Bool)

(declare-fun b_and!30371 () Bool)

(assert (=> start!82760 (= tp!65716 b_and!30371)))

(declare-fun b!964772 () Bool)

(declare-fun res!645907 () Bool)

(declare-fun e!543903 () Bool)

(assert (=> b!964772 (=> (not res!645907) (not e!543903))))

(declare-datatypes ((array!59403 0))(
  ( (array!59404 (arr!28566 (Array (_ BitVec 32) (_ BitVec 64))) (size!29046 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59403)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964772 (= res!645907 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29046 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29046 _keys!1686))))))

(declare-fun res!645910 () Bool)

(assert (=> start!82760 (=> (not res!645910) (not e!543903))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82760 (= res!645910 (validMask!0 mask!2110))))

(assert (=> start!82760 e!543903))

(assert (=> start!82760 true))

(declare-datatypes ((V!33873 0))(
  ( (V!33874 (val!10884 Int)) )
))
(declare-datatypes ((ValueCell!10352 0))(
  ( (ValueCellFull!10352 (v!13442 V!33873)) (EmptyCell!10352) )
))
(declare-datatypes ((array!59405 0))(
  ( (array!59406 (arr!28567 (Array (_ BitVec 32) ValueCell!10352)) (size!29047 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59405)

(declare-fun e!543904 () Bool)

(declare-fun array_inv!22031 (array!59405) Bool)

(assert (=> start!82760 (and (array_inv!22031 _values!1400) e!543904)))

(declare-fun array_inv!22032 (array!59403) Bool)

(assert (=> start!82760 (array_inv!22032 _keys!1686)))

(assert (=> start!82760 tp!65716))

(declare-fun tp_is_empty!21667 () Bool)

(assert (=> start!82760 tp_is_empty!21667))

(declare-fun b!964773 () Bool)

(declare-fun e!543900 () Bool)

(declare-fun mapRes!34495 () Bool)

(assert (=> b!964773 (= e!543904 (and e!543900 mapRes!34495))))

(declare-fun condMapEmpty!34495 () Bool)

(declare-fun mapDefault!34495 () ValueCell!10352)

