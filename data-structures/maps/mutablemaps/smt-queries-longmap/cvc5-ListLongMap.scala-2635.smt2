; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39636 () Bool)

(assert start!39636)

(declare-fun b_free!9895 () Bool)

(declare-fun b_next!9895 () Bool)

(assert (=> start!39636 (= b_free!9895 (not b_next!9895))))

(declare-fun tp!35214 () Bool)

(declare-fun b_and!17569 () Bool)

(assert (=> start!39636 (= tp!35214 b_and!17569)))

(declare-fun b!424700 () Bool)

(declare-fun e!252223 () Bool)

(declare-fun e!252219 () Bool)

(assert (=> b!424700 (= e!252223 e!252219)))

(declare-fun res!248602 () Bool)

(assert (=> b!424700 (=> (not res!248602) (not e!252219))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424700 (= res!248602 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15835 0))(
  ( (V!15836 (val!5568 Int)) )
))
(declare-fun minValue!515 () V!15835)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5180 0))(
  ( (ValueCellFull!5180 (v!7811 V!15835)) (EmptyCell!5180) )
))
(declare-datatypes ((array!25921 0))(
  ( (array!25922 (arr!12407 (Array (_ BitVec 32) ValueCell!5180)) (size!12759 (_ BitVec 32))) )
))
(declare-fun lt!194443 () array!25921)

(declare-fun zeroValue!515 () V!15835)

(declare-datatypes ((tuple2!7248 0))(
  ( (tuple2!7249 (_1!3634 (_ BitVec 64)) (_2!3634 V!15835)) )
))
(declare-datatypes ((List!7293 0))(
  ( (Nil!7290) (Cons!7289 (h!8145 tuple2!7248) (t!12745 List!7293)) )
))
(declare-datatypes ((ListLongMap!6175 0))(
  ( (ListLongMap!6176 (toList!3103 List!7293)) )
))
(declare-fun lt!194444 () ListLongMap!6175)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25923 0))(
  ( (array!25924 (arr!12408 (Array (_ BitVec 32) (_ BitVec 64))) (size!12760 (_ BitVec 32))) )
))
(declare-fun lt!194445 () array!25923)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1304 (array!25923 array!25921 (_ BitVec 32) (_ BitVec 32) V!15835 V!15835 (_ BitVec 32) Int) ListLongMap!6175)

(assert (=> b!424700 (= lt!194444 (getCurrentListMapNoExtraKeys!1304 lt!194445 lt!194443 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25921)

(declare-fun v!412 () V!15835)

(assert (=> b!424700 (= lt!194443 (array!25922 (store (arr!12407 _values!549) i!563 (ValueCellFull!5180 v!412)) (size!12759 _values!549)))))

(declare-fun lt!194441 () ListLongMap!6175)

(declare-fun _keys!709 () array!25923)

(assert (=> b!424700 (= lt!194441 (getCurrentListMapNoExtraKeys!1304 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!248605 () Bool)

(declare-fun e!252221 () Bool)

(assert (=> start!39636 (=> (not res!248605) (not e!252221))))

(assert (=> start!39636 (= res!248605 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12760 _keys!709))))))

(assert (=> start!39636 e!252221))

(declare-fun tp_is_empty!11047 () Bool)

(assert (=> start!39636 tp_is_empty!11047))

(assert (=> start!39636 tp!35214))

(assert (=> start!39636 true))

(declare-fun e!252218 () Bool)

(declare-fun array_inv!9046 (array!25921) Bool)

(assert (=> start!39636 (and (array_inv!9046 _values!549) e!252218)))

(declare-fun array_inv!9047 (array!25923) Bool)

(assert (=> start!39636 (array_inv!9047 _keys!709)))

(declare-fun b!424701 () Bool)

(declare-fun res!248609 () Bool)

(assert (=> b!424701 (=> (not res!248609) (not e!252221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25923 (_ BitVec 32)) Bool)

(assert (=> b!424701 (= res!248609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18192 () Bool)

(declare-fun mapRes!18192 () Bool)

(assert (=> mapIsEmpty!18192 mapRes!18192))

(declare-fun b!424702 () Bool)

(declare-fun res!248606 () Bool)

(assert (=> b!424702 (=> (not res!248606) (not e!252221))))

(assert (=> b!424702 (= res!248606 (or (= (select (arr!12408 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12408 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424703 () Bool)

(declare-fun res!248600 () Bool)

(assert (=> b!424703 (=> (not res!248600) (not e!252223))))

(declare-datatypes ((List!7294 0))(
  ( (Nil!7291) (Cons!7290 (h!8146 (_ BitVec 64)) (t!12746 List!7294)) )
))
(declare-fun arrayNoDuplicates!0 (array!25923 (_ BitVec 32) List!7294) Bool)

(assert (=> b!424703 (= res!248600 (arrayNoDuplicates!0 lt!194445 #b00000000000000000000000000000000 Nil!7291))))

(declare-fun b!424704 () Bool)

(assert (=> b!424704 (= e!252221 e!252223)))

(declare-fun res!248599 () Bool)

(assert (=> b!424704 (=> (not res!248599) (not e!252223))))

(assert (=> b!424704 (= res!248599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194445 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!424704 (= lt!194445 (array!25924 (store (arr!12408 _keys!709) i!563 k!794) (size!12760 _keys!709)))))

(declare-fun b!424705 () Bool)

(declare-fun e!252217 () Bool)

(assert (=> b!424705 (= e!252217 tp_is_empty!11047)))

(declare-fun mapNonEmpty!18192 () Bool)

(declare-fun tp!35213 () Bool)

(declare-fun e!252222 () Bool)

(assert (=> mapNonEmpty!18192 (= mapRes!18192 (and tp!35213 e!252222))))

(declare-fun mapKey!18192 () (_ BitVec 32))

(declare-fun mapRest!18192 () (Array (_ BitVec 32) ValueCell!5180))

(declare-fun mapValue!18192 () ValueCell!5180)

(assert (=> mapNonEmpty!18192 (= (arr!12407 _values!549) (store mapRest!18192 mapKey!18192 mapValue!18192))))

(declare-fun b!424706 () Bool)

(declare-fun res!248601 () Bool)

(assert (=> b!424706 (=> (not res!248601) (not e!252221))))

(declare-fun arrayContainsKey!0 (array!25923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424706 (= res!248601 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!424707 () Bool)

(declare-fun res!248607 () Bool)

(assert (=> b!424707 (=> (not res!248607) (not e!252221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424707 (= res!248607 (validKeyInArray!0 k!794))))

(declare-fun b!424708 () Bool)

(assert (=> b!424708 (= e!252222 tp_is_empty!11047)))

(declare-fun b!424709 () Bool)

(declare-fun res!248598 () Bool)

(assert (=> b!424709 (=> (not res!248598) (not e!252221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424709 (= res!248598 (validMask!0 mask!1025))))

(declare-fun b!424710 () Bool)

(declare-fun res!248610 () Bool)

(assert (=> b!424710 (=> (not res!248610) (not e!252223))))

(assert (=> b!424710 (= res!248610 (bvsle from!863 i!563))))

(declare-fun b!424711 () Bool)

(declare-fun res!248603 () Bool)

(assert (=> b!424711 (=> (not res!248603) (not e!252221))))

(assert (=> b!424711 (= res!248603 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12760 _keys!709))))))

(declare-fun b!424712 () Bool)

(assert (=> b!424712 (= e!252218 (and e!252217 mapRes!18192))))

(declare-fun condMapEmpty!18192 () Bool)

(declare-fun mapDefault!18192 () ValueCell!5180)

