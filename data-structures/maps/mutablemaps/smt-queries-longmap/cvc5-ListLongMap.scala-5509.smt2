; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72866 () Bool)

(assert start!72866)

(declare-fun b_free!13753 () Bool)

(declare-fun b_next!13753 () Bool)

(assert (=> start!72866 (= b_free!13753 (not b_next!13753))))

(declare-fun tp!48763 () Bool)

(declare-fun b_and!22857 () Bool)

(assert (=> start!72866 (= tp!48763 b_and!22857)))

(declare-fun b!845158 () Bool)

(declare-fun res!574266 () Bool)

(declare-fun e!471853 () Bool)

(assert (=> b!845158 (=> (not res!574266) (not e!471853))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845158 (= res!574266 (validMask!0 mask!1196))))

(declare-fun b!845159 () Bool)

(declare-fun res!574265 () Bool)

(assert (=> b!845159 (=> (not res!574265) (not e!471853))))

(declare-datatypes ((array!47982 0))(
  ( (array!47983 (arr!23018 (Array (_ BitVec 32) (_ BitVec 64))) (size!23459 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47982)

(declare-datatypes ((List!16366 0))(
  ( (Nil!16363) (Cons!16362 (h!17493 (_ BitVec 64)) (t!22745 List!16366)) )
))
(declare-fun arrayNoDuplicates!0 (array!47982 (_ BitVec 32) List!16366) Bool)

(assert (=> b!845159 (= res!574265 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16363))))

(declare-fun b!845160 () Bool)

(declare-fun e!471851 () Bool)

(declare-fun e!471855 () Bool)

(declare-fun mapRes!25433 () Bool)

(assert (=> b!845160 (= e!471851 (and e!471855 mapRes!25433))))

(declare-fun condMapEmpty!25433 () Bool)

(declare-datatypes ((V!26233 0))(
  ( (V!26234 (val!7992 Int)) )
))
(declare-datatypes ((ValueCell!7505 0))(
  ( (ValueCellFull!7505 (v!10413 V!26233)) (EmptyCell!7505) )
))
(declare-datatypes ((array!47984 0))(
  ( (array!47985 (arr!23019 (Array (_ BitVec 32) ValueCell!7505)) (size!23460 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47984)

(declare-fun mapDefault!25433 () ValueCell!7505)

