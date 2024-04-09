; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72918 () Bool)

(assert start!72918)

(declare-fun b_free!13805 () Bool)

(declare-fun b_next!13805 () Bool)

(assert (=> start!72918 (= b_free!13805 (not b_next!13805))))

(declare-fun tp!48919 () Bool)

(declare-fun b_and!22909 () Bool)

(assert (=> start!72918 (= tp!48919 b_and!22909)))

(declare-fun mapIsEmpty!25511 () Bool)

(declare-fun mapRes!25511 () Bool)

(assert (=> mapIsEmpty!25511 mapRes!25511))

(declare-fun b!846016 () Bool)

(declare-fun res!574886 () Bool)

(declare-fun e!472243 () Bool)

(assert (=> b!846016 (=> (not res!574886) (not e!472243))))

(declare-datatypes ((array!48082 0))(
  ( (array!48083 (arr!23068 (Array (_ BitVec 32) (_ BitVec 64))) (size!23509 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48082)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48082 (_ BitVec 32)) Bool)

(assert (=> b!846016 (= res!574886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!574888 () Bool)

(assert (=> start!72918 (=> (not res!574888) (not e!472243))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72918 (= res!574888 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23509 _keys!868))))))

(assert (=> start!72918 e!472243))

(declare-fun tp_is_empty!15941 () Bool)

(assert (=> start!72918 tp_is_empty!15941))

(assert (=> start!72918 true))

(assert (=> start!72918 tp!48919))

(declare-fun array_inv!18308 (array!48082) Bool)

(assert (=> start!72918 (array_inv!18308 _keys!868)))

(declare-datatypes ((V!26301 0))(
  ( (V!26302 (val!8018 Int)) )
))
(declare-datatypes ((ValueCell!7531 0))(
  ( (ValueCellFull!7531 (v!10439 V!26301)) (EmptyCell!7531) )
))
(declare-datatypes ((array!48084 0))(
  ( (array!48085 (arr!23069 (Array (_ BitVec 32) ValueCell!7531)) (size!23510 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48084)

(declare-fun e!472245 () Bool)

(declare-fun array_inv!18309 (array!48084) Bool)

(assert (=> start!72918 (and (array_inv!18309 _values!688) e!472245)))

(declare-fun b!846017 () Bool)

(declare-fun e!472241 () Bool)

(assert (=> b!846017 (= e!472241 tp_is_empty!15941)))

(declare-fun b!846018 () Bool)

(declare-fun e!472242 () Bool)

(assert (=> b!846018 (= e!472245 (and e!472242 mapRes!25511))))

(declare-fun condMapEmpty!25511 () Bool)

(declare-fun mapDefault!25511 () ValueCell!7531)

