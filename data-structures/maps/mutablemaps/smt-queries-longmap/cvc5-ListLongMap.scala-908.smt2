; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20556 () Bool)

(assert start!20556)

(declare-fun b_free!5203 () Bool)

(declare-fun b_next!5203 () Bool)

(assert (=> start!20556 (= b_free!5203 (not b_next!5203))))

(declare-fun tp!18641 () Bool)

(declare-fun b_and!11967 () Bool)

(assert (=> start!20556 (= tp!18641 b_and!11967)))

(declare-fun b!204247 () Bool)

(declare-fun res!98393 () Bool)

(declare-fun e!133661 () Bool)

(assert (=> b!204247 (=> (not res!98393) (not e!133661))))

(declare-datatypes ((array!9334 0))(
  ( (array!9335 (arr!4417 (Array (_ BitVec 32) (_ BitVec 64))) (size!4742 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9334)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9334 (_ BitVec 32)) Bool)

(assert (=> b!204247 (= res!98393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204248 () Bool)

(declare-fun res!98389 () Bool)

(assert (=> b!204248 (=> (not res!98389) (not e!133661))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6393 0))(
  ( (V!6394 (val!2574 Int)) )
))
(declare-datatypes ((ValueCell!2186 0))(
  ( (ValueCellFull!2186 (v!4540 V!6393)) (EmptyCell!2186) )
))
(declare-datatypes ((array!9336 0))(
  ( (array!9337 (arr!4418 (Array (_ BitVec 32) ValueCell!2186)) (size!4743 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9336)

(assert (=> b!204248 (= res!98389 (and (= (size!4743 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4742 _keys!825) (size!4743 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204249 () Bool)

(declare-fun res!98394 () Bool)

(assert (=> b!204249 (=> (not res!98394) (not e!133661))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204249 (= res!98394 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4742 _keys!825))))))

(declare-fun b!204250 () Bool)

(declare-fun e!133660 () Bool)

(declare-fun e!133662 () Bool)

(declare-fun mapRes!8657 () Bool)

(assert (=> b!204250 (= e!133660 (and e!133662 mapRes!8657))))

(declare-fun condMapEmpty!8657 () Bool)

(declare-fun mapDefault!8657 () ValueCell!2186)

