; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20598 () Bool)

(assert start!20598)

(declare-fun b_free!5245 () Bool)

(declare-fun b_next!5245 () Bool)

(assert (=> start!20598 (= b_free!5245 (not b_next!5245))))

(declare-fun tp!18766 () Bool)

(declare-fun b_and!12009 () Bool)

(assert (=> start!20598 (= tp!18766 b_and!12009)))

(declare-fun b!205012 () Bool)

(declare-fun res!98970 () Bool)

(declare-fun e!134101 () Bool)

(assert (=> b!205012 (=> (not res!98970) (not e!134101))))

(declare-datatypes ((array!9414 0))(
  ( (array!9415 (arr!4457 (Array (_ BitVec 32) (_ BitVec 64))) (size!4782 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9414)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205012 (= res!98970 (= (select (arr!4457 _keys!825) i!601) k!843))))

(declare-fun b!205013 () Bool)

(declare-fun res!98969 () Bool)

(assert (=> b!205013 (=> (not res!98969) (not e!134101))))

(declare-datatypes ((List!2852 0))(
  ( (Nil!2849) (Cons!2848 (h!3490 (_ BitVec 64)) (t!7791 List!2852)) )
))
(declare-fun arrayNoDuplicates!0 (array!9414 (_ BitVec 32) List!2852) Bool)

(assert (=> b!205013 (= res!98969 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2849))))

(declare-fun b!205014 () Bool)

(declare-fun e!134107 () Bool)

(assert (=> b!205014 (= e!134107 true)))

(declare-datatypes ((V!6449 0))(
  ( (V!6450 (val!2595 Int)) )
))
(declare-datatypes ((tuple2!3928 0))(
  ( (tuple2!3929 (_1!1974 (_ BitVec 64)) (_2!1974 V!6449)) )
))
(declare-datatypes ((List!2853 0))(
  ( (Nil!2850) (Cons!2849 (h!3491 tuple2!3928) (t!7792 List!2853)) )
))
(declare-datatypes ((ListLongMap!2855 0))(
  ( (ListLongMap!2856 (toList!1443 List!2853)) )
))
(declare-fun lt!104212 () ListLongMap!2855)

(declare-fun lt!104216 () ListLongMap!2855)

(declare-fun lt!104221 () tuple2!3928)

(declare-fun +!460 (ListLongMap!2855 tuple2!3928) ListLongMap!2855)

(assert (=> b!205014 (= lt!104212 (+!460 lt!104216 lt!104221))))

(declare-fun minValue!615 () V!6449)

(declare-fun lt!104213 () ListLongMap!2855)

(declare-fun v!520 () V!6449)

(declare-datatypes ((Unit!6219 0))(
  ( (Unit!6220) )
))
(declare-fun lt!104217 () Unit!6219)

(declare-fun addCommutativeForDiffKeys!165 (ListLongMap!2855 (_ BitVec 64) V!6449 (_ BitVec 64) V!6449) Unit!6219)

(assert (=> b!205014 (= lt!104217 (addCommutativeForDiffKeys!165 lt!104213 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205015 () Bool)

(declare-fun res!98965 () Bool)

(assert (=> b!205015 (=> (not res!98965) (not e!134101))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9414 (_ BitVec 32)) Bool)

(assert (=> b!205015 (= res!98965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205016 () Bool)

(declare-fun e!134106 () Bool)

(declare-fun e!134105 () Bool)

(declare-fun mapRes!8720 () Bool)

(assert (=> b!205016 (= e!134106 (and e!134105 mapRes!8720))))

(declare-fun condMapEmpty!8720 () Bool)

(declare-datatypes ((ValueCell!2207 0))(
  ( (ValueCellFull!2207 (v!4561 V!6449)) (EmptyCell!2207) )
))
(declare-datatypes ((array!9416 0))(
  ( (array!9417 (arr!4458 (Array (_ BitVec 32) ValueCell!2207)) (size!4783 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9416)

(declare-fun mapDefault!8720 () ValueCell!2207)

