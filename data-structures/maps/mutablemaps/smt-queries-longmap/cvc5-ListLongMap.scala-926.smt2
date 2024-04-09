; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20664 () Bool)

(assert start!20664)

(declare-fun b_free!5311 () Bool)

(declare-fun b_next!5311 () Bool)

(assert (=> start!20664 (= b_free!5311 (not b_next!5311))))

(declare-fun tp!18965 () Bool)

(declare-fun b_and!12075 () Bool)

(assert (=> start!20664 (= tp!18965 b_and!12075)))

(declare-fun b!206200 () Bool)

(declare-fun res!99858 () Bool)

(declare-fun e!134797 () Bool)

(assert (=> b!206200 (=> (not res!99858) (not e!134797))))

(declare-datatypes ((array!9544 0))(
  ( (array!9545 (arr!4522 (Array (_ BitVec 32) (_ BitVec 64))) (size!4847 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9544)

(declare-datatypes ((List!2904 0))(
  ( (Nil!2901) (Cons!2900 (h!3542 (_ BitVec 64)) (t!7843 List!2904)) )
))
(declare-fun arrayNoDuplicates!0 (array!9544 (_ BitVec 32) List!2904) Bool)

(assert (=> b!206200 (= res!99858 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2901))))

(declare-fun b!206201 () Bool)

(declare-fun e!134794 () Bool)

(assert (=> b!206201 (= e!134794 true)))

(declare-datatypes ((V!6537 0))(
  ( (V!6538 (val!2628 Int)) )
))
(declare-datatypes ((tuple2!3988 0))(
  ( (tuple2!3989 (_1!2004 (_ BitVec 64)) (_2!2004 V!6537)) )
))
(declare-datatypes ((List!2905 0))(
  ( (Nil!2902) (Cons!2901 (h!3543 tuple2!3988) (t!7844 List!2905)) )
))
(declare-datatypes ((ListLongMap!2915 0))(
  ( (ListLongMap!2916 (toList!1473 List!2905)) )
))
(declare-fun lt!105402 () ListLongMap!2915)

(declare-fun lt!105408 () ListLongMap!2915)

(declare-fun lt!105403 () tuple2!3988)

(declare-fun +!490 (ListLongMap!2915 tuple2!3988) ListLongMap!2915)

(assert (=> b!206201 (= lt!105402 (+!490 lt!105408 lt!105403))))

(declare-fun minValue!615 () V!6537)

(declare-datatypes ((Unit!6275 0))(
  ( (Unit!6276) )
))
(declare-fun lt!105407 () Unit!6275)

(declare-fun lt!105405 () ListLongMap!2915)

(declare-fun v!520 () V!6537)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!188 (ListLongMap!2915 (_ BitVec 64) V!6537 (_ BitVec 64) V!6537) Unit!6275)

(assert (=> b!206201 (= lt!105407 (addCommutativeForDiffKeys!188 lt!105405 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206202 () Bool)

(declare-fun res!99862 () Bool)

(assert (=> b!206202 (=> (not res!99862) (not e!134797))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9544 (_ BitVec 32)) Bool)

(assert (=> b!206202 (= res!99862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206203 () Bool)

(declare-fun res!99854 () Bool)

(assert (=> b!206203 (=> (not res!99854) (not e!134797))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206203 (= res!99854 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4847 _keys!825))))))

(declare-fun res!99857 () Bool)

(assert (=> start!20664 (=> (not res!99857) (not e!134797))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20664 (= res!99857 (validMask!0 mask!1149))))

(assert (=> start!20664 e!134797))

(declare-datatypes ((ValueCell!2240 0))(
  ( (ValueCellFull!2240 (v!4594 V!6537)) (EmptyCell!2240) )
))
(declare-datatypes ((array!9546 0))(
  ( (array!9547 (arr!4523 (Array (_ BitVec 32) ValueCell!2240)) (size!4848 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9546)

(declare-fun e!134800 () Bool)

(declare-fun array_inv!2981 (array!9546) Bool)

(assert (=> start!20664 (and (array_inv!2981 _values!649) e!134800)))

(assert (=> start!20664 true))

(declare-fun tp_is_empty!5167 () Bool)

(assert (=> start!20664 tp_is_empty!5167))

(declare-fun array_inv!2982 (array!9544) Bool)

(assert (=> start!20664 (array_inv!2982 _keys!825)))

(assert (=> start!20664 tp!18965))

(declare-fun b!206204 () Bool)

(declare-fun res!99859 () Bool)

(assert (=> b!206204 (=> (not res!99859) (not e!134797))))

(assert (=> b!206204 (= res!99859 (= (select (arr!4522 _keys!825) i!601) k!843))))

(declare-fun b!206205 () Bool)

(declare-fun e!134798 () Bool)

(assert (=> b!206205 (= e!134798 tp_is_empty!5167)))

(declare-fun b!206206 () Bool)

(declare-fun mapRes!8819 () Bool)

(assert (=> b!206206 (= e!134800 (and e!134798 mapRes!8819))))

(declare-fun condMapEmpty!8819 () Bool)

(declare-fun mapDefault!8819 () ValueCell!2240)

