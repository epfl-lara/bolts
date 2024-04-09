; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112952 () Bool)

(assert start!112952)

(declare-fun b!1338670 () Bool)

(declare-fun res!888227 () Bool)

(declare-fun e!762355 () Bool)

(assert (=> b!1338670 (=> (not res!888227) (not e!762355))))

(declare-datatypes ((array!90825 0))(
  ( (array!90826 (arr!43867 (Array (_ BitVec 32) (_ BitVec 64))) (size!44418 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90825)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90825 (_ BitVec 32)) Bool)

(assert (=> b!1338670 (= res!888227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!888228 () Bool)

(assert (=> start!112952 (=> (not res!888228) (not e!762355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112952 (= res!888228 (validMask!0 mask!1977))))

(assert (=> start!112952 e!762355))

(assert (=> start!112952 true))

(declare-datatypes ((V!54433 0))(
  ( (V!54434 (val!18573 Int)) )
))
(declare-datatypes ((ValueCell!17600 0))(
  ( (ValueCellFull!17600 (v!21218 V!54433)) (EmptyCell!17600) )
))
(declare-datatypes ((array!90827 0))(
  ( (array!90828 (arr!43868 (Array (_ BitVec 32) ValueCell!17600)) (size!44419 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90827)

(declare-fun e!762353 () Bool)

(declare-fun array_inv!33005 (array!90827) Bool)

(assert (=> start!112952 (and (array_inv!33005 _values!1303) e!762353)))

(declare-fun array_inv!33006 (array!90825) Bool)

(assert (=> start!112952 (array_inv!33006 _keys!1571)))

(declare-fun b!1338671 () Bool)

(declare-fun e!762357 () Bool)

(declare-fun tp_is_empty!36997 () Bool)

(assert (=> b!1338671 (= e!762357 tp_is_empty!36997)))

(declare-fun b!1338672 () Bool)

(declare-fun e!762356 () Bool)

(assert (=> b!1338672 (= e!762356 tp_is_empty!36997)))

(declare-fun mapIsEmpty!57193 () Bool)

(declare-fun mapRes!57193 () Bool)

(assert (=> mapIsEmpty!57193 mapRes!57193))

(declare-fun b!1338673 () Bool)

(assert (=> b!1338673 (= e!762353 (and e!762356 mapRes!57193))))

(declare-fun condMapEmpty!57193 () Bool)

(declare-fun mapDefault!57193 () ValueCell!17600)

