; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4058 () Bool)

(assert start!4058)

(declare-fun b_free!965 () Bool)

(declare-fun b_next!965 () Bool)

(assert (=> start!4058 (= b_free!965 (not b_next!965))))

(declare-fun tp!4315 () Bool)

(declare-fun b_and!1777 () Bool)

(assert (=> start!4058 (= tp!4315 b_and!1777)))

(declare-fun b!29894 () Bool)

(declare-fun res!17946 () Bool)

(declare-fun e!19266 () Bool)

(assert (=> b!29894 (=> (not res!17946) (not e!19266))))

(declare-datatypes ((array!1859 0))(
  ( (array!1860 (arr!883 (Array (_ BitVec 32) (_ BitVec 64))) (size!984 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1859)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1859 (_ BitVec 32)) Bool)

(assert (=> b!29894 (= res!17946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29895 () Bool)

(declare-fun res!17942 () Bool)

(assert (=> b!29895 (=> (not res!17942) (not e!19266))))

(declare-datatypes ((V!1583 0))(
  ( (V!1584 (val!686 Int)) )
))
(declare-datatypes ((ValueCell!460 0))(
  ( (ValueCellFull!460 (v!1775 V!1583)) (EmptyCell!460) )
))
(declare-datatypes ((array!1861 0))(
  ( (array!1862 (arr!884 (Array (_ BitVec 32) ValueCell!460)) (size!985 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1861)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!29895 (= res!17942 (and (= (size!985 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!984 _keys!1833) (size!985 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29896 () Bool)

(declare-fun e!19265 () Bool)

(declare-fun e!19267 () Bool)

(declare-fun mapRes!1507 () Bool)

(assert (=> b!29896 (= e!19265 (and e!19267 mapRes!1507))))

(declare-fun condMapEmpty!1507 () Bool)

(declare-fun mapDefault!1507 () ValueCell!460)

