; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72678 () Bool)

(assert start!72678)

(declare-fun b!843141 () Bool)

(declare-fun res!573087 () Bool)

(declare-fun e!470445 () Bool)

(assert (=> b!843141 (=> (not res!573087) (not e!470445))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843141 (= res!573087 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25151 () Bool)

(declare-fun mapRes!25151 () Bool)

(declare-fun tp!48470 () Bool)

(declare-fun e!470443 () Bool)

(assert (=> mapNonEmpty!25151 (= mapRes!25151 (and tp!48470 e!470443))))

(declare-datatypes ((V!25981 0))(
  ( (V!25982 (val!7898 Int)) )
))
(declare-datatypes ((ValueCell!7411 0))(
  ( (ValueCellFull!7411 (v!10319 V!25981)) (EmptyCell!7411) )
))
(declare-fun mapRest!25151 () (Array (_ BitVec 32) ValueCell!7411))

(declare-fun mapValue!25151 () ValueCell!7411)

(declare-fun mapKey!25151 () (_ BitVec 32))

(declare-datatypes ((array!47638 0))(
  ( (array!47639 (arr!22846 (Array (_ BitVec 32) ValueCell!7411)) (size!23287 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47638)

(assert (=> mapNonEmpty!25151 (= (arr!22846 _values!688) (store mapRest!25151 mapKey!25151 mapValue!25151))))

(declare-fun b!843142 () Bool)

(declare-fun e!470444 () Bool)

(declare-fun e!470442 () Bool)

(assert (=> b!843142 (= e!470444 (and e!470442 mapRes!25151))))

(declare-fun condMapEmpty!25151 () Bool)

(declare-fun mapDefault!25151 () ValueCell!7411)

