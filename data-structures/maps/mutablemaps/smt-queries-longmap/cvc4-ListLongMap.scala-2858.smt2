; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41190 () Bool)

(assert start!41190)

(declare-fun b_free!11051 () Bool)

(declare-fun b_next!11051 () Bool)

(assert (=> start!41190 (= b_free!11051 (not b_next!11051))))

(declare-fun tp!38989 () Bool)

(declare-fun b_and!19359 () Bool)

(assert (=> start!41190 (= tp!38989 b_and!19359)))

(declare-fun b!460176 () Bool)

(declare-datatypes ((Unit!13344 0))(
  ( (Unit!13345) )
))
(declare-fun e!268490 () Unit!13344)

(declare-fun Unit!13346 () Unit!13344)

(assert (=> b!460176 (= e!268490 Unit!13346)))

(declare-fun lt!208415 () Unit!13344)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!28539 0))(
  ( (array!28540 (arr!13707 (Array (_ BitVec 32) (_ BitVec 64))) (size!14059 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28539)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28539 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13344)

(assert (=> b!460176 (= lt!208415 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!460176 false))

(declare-fun b!460177 () Bool)

(declare-fun res!275204 () Bool)

(declare-fun e!268489 () Bool)

(assert (=> b!460177 (=> (not res!275204) (not e!268489))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460177 (= res!275204 (bvsle from!863 i!563))))

(declare-fun b!460178 () Bool)

(declare-fun e!268488 () Bool)

(assert (=> b!460178 (= e!268488 e!268489)))

(declare-fun res!275199 () Bool)

(assert (=> b!460178 (=> (not res!275199) (not e!268489))))

(declare-fun lt!208424 () array!28539)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28539 (_ BitVec 32)) Bool)

(assert (=> b!460178 (= res!275199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208424 mask!1025))))

(assert (=> b!460178 (= lt!208424 (array!28540 (store (arr!13707 _keys!709) i!563 k!794) (size!14059 _keys!709)))))

(declare-fun b!460179 () Bool)

(declare-fun res!275202 () Bool)

(assert (=> b!460179 (=> (not res!275202) (not e!268488))))

(assert (=> b!460179 (= res!275202 (or (= (select (arr!13707 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13707 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460180 () Bool)

(declare-fun res!275198 () Bool)

(assert (=> b!460180 (=> (not res!275198) (not e!268489))))

(declare-datatypes ((List!8296 0))(
  ( (Nil!8293) (Cons!8292 (h!9148 (_ BitVec 64)) (t!14234 List!8296)) )
))
(declare-fun arrayNoDuplicates!0 (array!28539 (_ BitVec 32) List!8296) Bool)

(assert (=> b!460180 (= res!275198 (arrayNoDuplicates!0 lt!208424 #b00000000000000000000000000000000 Nil!8293))))

(declare-fun b!460181 () Bool)

(declare-fun res!275192 () Bool)

(assert (=> b!460181 (=> (not res!275192) (not e!268488))))

(assert (=> b!460181 (= res!275192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460182 () Bool)

(declare-fun e!268486 () Bool)

(declare-fun e!268492 () Bool)

(assert (=> b!460182 (= e!268486 e!268492)))

(declare-fun res!275205 () Bool)

(assert (=> b!460182 (=> res!275205 e!268492)))

(assert (=> b!460182 (= res!275205 (= k!794 (select (arr!13707 _keys!709) from!863)))))

(assert (=> b!460182 (not (= (select (arr!13707 _keys!709) from!863) k!794))))

(declare-fun lt!208417 () Unit!13344)

(assert (=> b!460182 (= lt!208417 e!268490)))

(declare-fun c!56450 () Bool)

(assert (=> b!460182 (= c!56450 (= (select (arr!13707 _keys!709) from!863) k!794))))

(declare-datatypes ((V!17623 0))(
  ( (V!17624 (val!6239 Int)) )
))
(declare-datatypes ((tuple2!8194 0))(
  ( (tuple2!8195 (_1!4107 (_ BitVec 64)) (_2!4107 V!17623)) )
))
(declare-datatypes ((List!8297 0))(
  ( (Nil!8294) (Cons!8293 (h!9149 tuple2!8194) (t!14235 List!8297)) )
))
(declare-datatypes ((ListLongMap!7121 0))(
  ( (ListLongMap!7122 (toList!3576 List!8297)) )
))
(declare-fun lt!208427 () ListLongMap!7121)

(declare-fun lt!208423 () ListLongMap!7121)

(assert (=> b!460182 (= lt!208427 lt!208423)))

(declare-fun lt!208426 () ListLongMap!7121)

(declare-fun lt!208414 () tuple2!8194)

(declare-fun +!1595 (ListLongMap!7121 tuple2!8194) ListLongMap!7121)

(assert (=> b!460182 (= lt!208423 (+!1595 lt!208426 lt!208414))))

(declare-fun lt!208422 () V!17623)

(assert (=> b!460182 (= lt!208414 (tuple2!8195 (select (arr!13707 _keys!709) from!863) lt!208422))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5851 0))(
  ( (ValueCellFull!5851 (v!8513 V!17623)) (EmptyCell!5851) )
))
(declare-datatypes ((array!28541 0))(
  ( (array!28542 (arr!13708 (Array (_ BitVec 32) ValueCell!5851)) (size!14060 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28541)

(declare-fun get!6779 (ValueCell!5851 V!17623) V!17623)

(declare-fun dynLambda!903 (Int (_ BitVec 64)) V!17623)

(assert (=> b!460182 (= lt!208422 (get!6779 (select (arr!13708 _values!549) from!863) (dynLambda!903 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460183 () Bool)

(assert (=> b!460183 (= e!268492 true)))

(declare-fun lt!208428 () tuple2!8194)

(declare-fun lt!208418 () ListLongMap!7121)

(assert (=> b!460183 (= lt!208423 (+!1595 (+!1595 lt!208418 lt!208414) lt!208428))))

(declare-fun lt!208421 () Unit!13344)

(declare-fun v!412 () V!17623)

(declare-fun addCommutativeForDiffKeys!421 (ListLongMap!7121 (_ BitVec 64) V!17623 (_ BitVec 64) V!17623) Unit!13344)

(assert (=> b!460183 (= lt!208421 (addCommutativeForDiffKeys!421 lt!208418 k!794 v!412 (select (arr!13707 _keys!709) from!863) lt!208422))))

(declare-fun b!460184 () Bool)

(declare-fun res!275203 () Bool)

(assert (=> b!460184 (=> (not res!275203) (not e!268488))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!460184 (= res!275203 (and (= (size!14060 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14059 _keys!709) (size!14060 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460185 () Bool)

(declare-fun res!275196 () Bool)

(assert (=> b!460185 (=> (not res!275196) (not e!268488))))

(assert (=> b!460185 (= res!275196 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8293))))

(declare-fun b!460186 () Bool)

(declare-fun e!268491 () Bool)

(declare-fun e!268487 () Bool)

(declare-fun mapRes!20233 () Bool)

(assert (=> b!460186 (= e!268491 (and e!268487 mapRes!20233))))

(declare-fun condMapEmpty!20233 () Bool)

(declare-fun mapDefault!20233 () ValueCell!5851)

