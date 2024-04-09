; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71016 () Bool)

(assert start!71016)

(declare-fun b_free!13195 () Bool)

(declare-fun b_next!13195 () Bool)

(assert (=> start!71016 (= b_free!13195 (not b_next!13195))))

(declare-fun tp!46339 () Bool)

(declare-fun b_and!22117 () Bool)

(assert (=> start!71016 (= tp!46339 b_and!22117)))

(declare-fun b!824221 () Bool)

(declare-fun res!562056 () Bool)

(declare-fun e!458582 () Bool)

(assert (=> b!824221 (=> (not res!562056) (not e!458582))))

(declare-datatypes ((array!45958 0))(
  ( (array!45959 (arr!22022 (Array (_ BitVec 32) (_ BitVec 64))) (size!22443 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45958)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45958 (_ BitVec 32)) Bool)

(assert (=> b!824221 (= res!562056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824222 () Bool)

(declare-fun e!458586 () Bool)

(declare-fun e!458584 () Bool)

(declare-fun mapRes!23977 () Bool)

(assert (=> b!824222 (= e!458586 (and e!458584 mapRes!23977))))

(declare-fun condMapEmpty!23977 () Bool)

(declare-datatypes ((V!24875 0))(
  ( (V!24876 (val!7500 Int)) )
))
(declare-datatypes ((ValueCell!7037 0))(
  ( (ValueCellFull!7037 (v!9929 V!24875)) (EmptyCell!7037) )
))
(declare-datatypes ((array!45960 0))(
  ( (array!45961 (arr!22023 (Array (_ BitVec 32) ValueCell!7037)) (size!22444 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45960)

(declare-fun mapDefault!23977 () ValueCell!7037)

