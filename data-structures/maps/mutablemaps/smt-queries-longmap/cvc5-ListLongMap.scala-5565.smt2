; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73202 () Bool)

(assert start!73202)

(declare-fun b_free!14089 () Bool)

(declare-fun b_next!14089 () Bool)

(assert (=> start!73202 (= b_free!14089 (not b_next!14089))))

(declare-fun tp!49772 () Bool)

(declare-fun b_and!23355 () Bool)

(assert (=> start!73202 (= tp!49772 b_and!23355)))

(declare-fun b!852096 () Bool)

(declare-fun res!578878 () Bool)

(declare-fun e!475277 () Bool)

(assert (=> b!852096 (=> (not res!578878) (not e!475277))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48636 0))(
  ( (array!48637 (arr!23345 (Array (_ BitVec 32) (_ BitVec 64))) (size!23786 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48636)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!852096 (= res!578878 (and (= (select (arr!23345 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!25937 () Bool)

(declare-fun mapRes!25937 () Bool)

(declare-fun tp!49771 () Bool)

(declare-fun e!475284 () Bool)

(assert (=> mapNonEmpty!25937 (= mapRes!25937 (and tp!49771 e!475284))))

(declare-fun mapKey!25937 () (_ BitVec 32))

(declare-datatypes ((V!26681 0))(
  ( (V!26682 (val!8160 Int)) )
))
(declare-datatypes ((ValueCell!7673 0))(
  ( (ValueCellFull!7673 (v!10581 V!26681)) (EmptyCell!7673) )
))
(declare-fun mapValue!25937 () ValueCell!7673)

(declare-fun mapRest!25937 () (Array (_ BitVec 32) ValueCell!7673))

(declare-datatypes ((array!48638 0))(
  ( (array!48639 (arr!23346 (Array (_ BitVec 32) ValueCell!7673)) (size!23787 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48638)

(assert (=> mapNonEmpty!25937 (= (arr!23346 _values!688) (store mapRest!25937 mapKey!25937 mapValue!25937))))

(declare-fun b!852097 () Bool)

(declare-fun e!475279 () Bool)

(declare-fun e!475280 () Bool)

(assert (=> b!852097 (= e!475279 (and e!475280 mapRes!25937))))

(declare-fun condMapEmpty!25937 () Bool)

(declare-fun mapDefault!25937 () ValueCell!7673)

