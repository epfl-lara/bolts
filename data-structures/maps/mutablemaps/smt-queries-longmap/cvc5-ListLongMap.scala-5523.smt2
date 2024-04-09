; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72950 () Bool)

(assert start!72950)

(declare-fun b_free!13837 () Bool)

(declare-fun b_next!13837 () Bool)

(assert (=> start!72950 (= b_free!13837 (not b_next!13837))))

(declare-fun tp!49015 () Bool)

(declare-fun b_and!22941 () Bool)

(assert (=> start!72950 (= tp!49015 b_and!22941)))

(declare-fun b!846544 () Bool)

(declare-fun e!472481 () Bool)

(declare-fun tp_is_empty!15973 () Bool)

(assert (=> b!846544 (= e!472481 tp_is_empty!15973)))

(declare-fun b!846545 () Bool)

(declare-fun res!575274 () Bool)

(declare-fun e!472483 () Bool)

(assert (=> b!846545 (=> (not res!575274) (not e!472483))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846545 (= res!575274 (validKeyInArray!0 k!854))))

(declare-fun res!575272 () Bool)

(assert (=> start!72950 (=> (not res!575272) (not e!472483))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48144 0))(
  ( (array!48145 (arr!23099 (Array (_ BitVec 32) (_ BitVec 64))) (size!23540 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48144)

(assert (=> start!72950 (= res!575272 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23540 _keys!868))))))

(assert (=> start!72950 e!472483))

(assert (=> start!72950 tp_is_empty!15973))

(assert (=> start!72950 true))

(assert (=> start!72950 tp!49015))

(declare-fun array_inv!18332 (array!48144) Bool)

(assert (=> start!72950 (array_inv!18332 _keys!868)))

(declare-datatypes ((V!26345 0))(
  ( (V!26346 (val!8034 Int)) )
))
(declare-datatypes ((ValueCell!7547 0))(
  ( (ValueCellFull!7547 (v!10455 V!26345)) (EmptyCell!7547) )
))
(declare-datatypes ((array!48146 0))(
  ( (array!48147 (arr!23100 (Array (_ BitVec 32) ValueCell!7547)) (size!23541 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48146)

(declare-fun e!472482 () Bool)

(declare-fun array_inv!18333 (array!48146) Bool)

(assert (=> start!72950 (and (array_inv!18333 _values!688) e!472482)))

(declare-fun b!846546 () Bool)

(declare-fun mapRes!25559 () Bool)

(assert (=> b!846546 (= e!472482 (and e!472481 mapRes!25559))))

(declare-fun condMapEmpty!25559 () Bool)

(declare-fun mapDefault!25559 () ValueCell!7547)

