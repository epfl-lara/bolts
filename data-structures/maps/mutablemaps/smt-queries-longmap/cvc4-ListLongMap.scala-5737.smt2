; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74268 () Bool)

(assert start!74268)

(declare-fun b!873221 () Bool)

(declare-fun res!593518 () Bool)

(declare-fun e!486315 () Bool)

(assert (=> b!873221 (=> (not res!593518) (not e!486315))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50636 0))(
  ( (array!50637 (arr!24343 (Array (_ BitVec 32) (_ BitVec 64))) (size!24784 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50636)

(assert (=> b!873221 (= res!593518 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24784 _keys!868))))))

(declare-fun b!873222 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((V!28061 0))(
  ( (V!28062 (val!8678 Int)) )
))
(declare-datatypes ((ValueCell!8191 0))(
  ( (ValueCellFull!8191 (v!11103 V!28061)) (EmptyCell!8191) )
))
(declare-datatypes ((array!50638 0))(
  ( (array!50639 (arr!24344 (Array (_ BitVec 32) ValueCell!8191)) (size!24785 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50638)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!873222 (= e!486315 (and (= (select (arr!24343 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsgt (bvadd #b00000000000000000000000000000001 from!1053) (size!24784 _keys!868)) (bvsge i!612 (size!24785 _values!688))))))

(declare-fun b!873223 () Bool)

(declare-fun res!593514 () Bool)

(assert (=> b!873223 (=> (not res!593514) (not e!486315))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50636 (_ BitVec 32)) Bool)

(assert (=> b!873223 (= res!593514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873224 () Bool)

(declare-fun res!593519 () Bool)

(assert (=> b!873224 (=> (not res!593519) (not e!486315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873224 (= res!593519 (validKeyInArray!0 k!854))))

(declare-fun b!873225 () Bool)

(declare-fun res!593520 () Bool)

(assert (=> b!873225 (=> (not res!593520) (not e!486315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873225 (= res!593520 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27497 () Bool)

(declare-fun mapRes!27497 () Bool)

(assert (=> mapIsEmpty!27497 mapRes!27497))

(declare-fun b!873227 () Bool)

(declare-fun e!486318 () Bool)

(declare-fun tp_is_empty!17261 () Bool)

(assert (=> b!873227 (= e!486318 tp_is_empty!17261)))

(declare-fun b!873228 () Bool)

(declare-fun e!486314 () Bool)

(declare-fun e!486316 () Bool)

(assert (=> b!873228 (= e!486314 (and e!486316 mapRes!27497))))

(declare-fun condMapEmpty!27497 () Bool)

(declare-fun mapDefault!27497 () ValueCell!8191)

