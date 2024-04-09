; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20518 () Bool)

(assert start!20518)

(declare-fun b_free!5165 () Bool)

(declare-fun b_next!5165 () Bool)

(assert (=> start!20518 (= b_free!5165 (not b_next!5165))))

(declare-fun tp!18527 () Bool)

(declare-fun b_and!11929 () Bool)

(assert (=> start!20518 (= tp!18527 b_and!11929)))

(declare-fun mapNonEmpty!8600 () Bool)

(declare-fun mapRes!8600 () Bool)

(declare-fun tp!18526 () Bool)

(declare-fun e!133266 () Bool)

(assert (=> mapNonEmpty!8600 (= mapRes!8600 (and tp!18526 e!133266))))

(declare-datatypes ((V!6341 0))(
  ( (V!6342 (val!2555 Int)) )
))
(declare-datatypes ((ValueCell!2167 0))(
  ( (ValueCellFull!2167 (v!4521 V!6341)) (EmptyCell!2167) )
))
(declare-fun mapRest!8600 () (Array (_ BitVec 32) ValueCell!2167))

(declare-fun mapValue!8600 () ValueCell!2167)

(declare-datatypes ((array!9264 0))(
  ( (array!9265 (arr!4382 (Array (_ BitVec 32) ValueCell!2167)) (size!4707 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9264)

(declare-fun mapKey!8600 () (_ BitVec 32))

(assert (=> mapNonEmpty!8600 (= (arr!4382 _values!649) (store mapRest!8600 mapKey!8600 mapValue!8600))))

(declare-fun b!203563 () Bool)

(declare-fun res!97874 () Bool)

(declare-fun e!133262 () Bool)

(assert (=> b!203563 (=> (not res!97874) (not e!133262))))

(declare-datatypes ((array!9266 0))(
  ( (array!9267 (arr!4383 (Array (_ BitVec 32) (_ BitVec 64))) (size!4708 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9266)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9266 (_ BitVec 32)) Bool)

(assert (=> b!203563 (= res!97874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8600 () Bool)

(assert (=> mapIsEmpty!8600 mapRes!8600))

(declare-fun res!97878 () Bool)

(assert (=> start!20518 (=> (not res!97878) (not e!133262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20518 (= res!97878 (validMask!0 mask!1149))))

(assert (=> start!20518 e!133262))

(declare-fun e!133264 () Bool)

(declare-fun array_inv!2887 (array!9264) Bool)

(assert (=> start!20518 (and (array_inv!2887 _values!649) e!133264)))

(assert (=> start!20518 true))

(declare-fun tp_is_empty!5021 () Bool)

(assert (=> start!20518 tp_is_empty!5021))

(declare-fun array_inv!2888 (array!9266) Bool)

(assert (=> start!20518 (array_inv!2888 _keys!825)))

(assert (=> start!20518 tp!18527))

(declare-fun b!203564 () Bool)

(declare-fun e!133267 () Bool)

(assert (=> b!203564 (= e!133264 (and e!133267 mapRes!8600))))

(declare-fun condMapEmpty!8600 () Bool)

(declare-fun mapDefault!8600 () ValueCell!2167)

