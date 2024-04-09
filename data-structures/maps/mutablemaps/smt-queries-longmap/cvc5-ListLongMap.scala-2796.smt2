; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40672 () Bool)

(assert start!40672)

(declare-fun b_free!10675 () Bool)

(declare-fun b_next!10675 () Bool)

(assert (=> start!40672 (= b_free!10675 (not b_next!10675))))

(declare-fun tp!37845 () Bool)

(declare-fun b_and!18701 () Bool)

(assert (=> start!40672 (= tp!37845 b_and!18701)))

(declare-fun b!449162 () Bool)

(declare-fun res!267225 () Bool)

(declare-fun e!263390 () Bool)

(assert (=> b!449162 (=> (not res!267225) (not e!263390))))

(declare-datatypes ((array!27793 0))(
  ( (array!27794 (arr!13339 (Array (_ BitVec 32) (_ BitVec 64))) (size!13691 (_ BitVec 32))) )
))
(declare-fun lt!204312 () array!27793)

(declare-datatypes ((List!7990 0))(
  ( (Nil!7987) (Cons!7986 (h!8842 (_ BitVec 64)) (t!13760 List!7990)) )
))
(declare-fun arrayNoDuplicates!0 (array!27793 (_ BitVec 32) List!7990) Bool)

(assert (=> b!449162 (= res!267225 (arrayNoDuplicates!0 lt!204312 #b00000000000000000000000000000000 Nil!7987))))

(declare-fun b!449163 () Bool)

(declare-fun res!267229 () Bool)

(declare-fun e!263386 () Bool)

(assert (=> b!449163 (=> (not res!267229) (not e!263386))))

(declare-fun _keys!709 () array!27793)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449163 (= res!267229 (or (= (select (arr!13339 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13339 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449164 () Bool)

(declare-fun res!267233 () Bool)

(assert (=> b!449164 (=> (not res!267233) (not e!263386))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17123 0))(
  ( (V!17124 (val!6051 Int)) )
))
(declare-datatypes ((ValueCell!5663 0))(
  ( (ValueCellFull!5663 (v!8302 V!17123)) (EmptyCell!5663) )
))
(declare-datatypes ((array!27795 0))(
  ( (array!27796 (arr!13340 (Array (_ BitVec 32) ValueCell!5663)) (size!13692 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27795)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!449164 (= res!267233 (and (= (size!13692 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13691 _keys!709) (size!13692 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449165 () Bool)

(declare-fun res!267224 () Bool)

(assert (=> b!449165 (=> (not res!267224) (not e!263390))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!449165 (= res!267224 (bvsle from!863 i!563))))

(declare-fun b!449166 () Bool)

(declare-fun res!267228 () Bool)

(assert (=> b!449166 (=> (not res!267228) (not e!263386))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449166 (= res!267228 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449167 () Bool)

(declare-fun res!267227 () Bool)

(assert (=> b!449167 (=> (not res!267227) (not e!263386))))

(assert (=> b!449167 (= res!267227 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13691 _keys!709))))))

(declare-fun b!449168 () Bool)

(assert (=> b!449168 (= e!263386 e!263390)))

(declare-fun res!267231 () Bool)

(assert (=> b!449168 (=> (not res!267231) (not e!263390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27793 (_ BitVec 32)) Bool)

(assert (=> b!449168 (= res!267231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204312 mask!1025))))

(assert (=> b!449168 (= lt!204312 (array!27794 (store (arr!13339 _keys!709) i!563 k!794) (size!13691 _keys!709)))))

(declare-fun b!449169 () Bool)

(declare-fun e!263387 () Bool)

(declare-fun e!263388 () Bool)

(declare-fun mapRes!19653 () Bool)

(assert (=> b!449169 (= e!263387 (and e!263388 mapRes!19653))))

(declare-fun condMapEmpty!19653 () Bool)

(declare-fun mapDefault!19653 () ValueCell!5663)

