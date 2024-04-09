; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72758 () Bool)

(assert start!72758)

(declare-fun b!843980 () Bool)

(declare-fun e!471041 () Bool)

(declare-fun tp_is_empty!15781 () Bool)

(assert (=> b!843980 (= e!471041 tp_is_empty!15781)))

(declare-fun b!843981 () Bool)

(declare-fun e!471042 () Bool)

(assert (=> b!843981 (= e!471042 false)))

(declare-fun lt!381183 () Bool)

(declare-datatypes ((array!47782 0))(
  ( (array!47783 (arr!22918 (Array (_ BitVec 32) (_ BitVec 64))) (size!23359 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47782)

(declare-datatypes ((List!16330 0))(
  ( (Nil!16327) (Cons!16326 (h!17457 (_ BitVec 64)) (t!22709 List!16330)) )
))
(declare-fun arrayNoDuplicates!0 (array!47782 (_ BitVec 32) List!16330) Bool)

(assert (=> b!843981 (= lt!381183 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16327))))

(declare-fun b!843982 () Bool)

(declare-fun res!573570 () Bool)

(assert (=> b!843982 (=> (not res!573570) (not e!471042))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843982 (= res!573570 (validMask!0 mask!1196))))

(declare-fun b!843983 () Bool)

(declare-fun res!573567 () Bool)

(assert (=> b!843983 (=> (not res!573567) (not e!471042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47782 (_ BitVec 32)) Bool)

(assert (=> b!843983 (= res!573567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843984 () Bool)

(declare-fun e!471044 () Bool)

(declare-fun e!471045 () Bool)

(declare-fun mapRes!25271 () Bool)

(assert (=> b!843984 (= e!471044 (and e!471045 mapRes!25271))))

(declare-fun condMapEmpty!25271 () Bool)

(declare-datatypes ((V!26089 0))(
  ( (V!26090 (val!7938 Int)) )
))
(declare-datatypes ((ValueCell!7451 0))(
  ( (ValueCellFull!7451 (v!10359 V!26089)) (EmptyCell!7451) )
))
(declare-datatypes ((array!47784 0))(
  ( (array!47785 (arr!22919 (Array (_ BitVec 32) ValueCell!7451)) (size!23360 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47784)

(declare-fun mapDefault!25271 () ValueCell!7451)

