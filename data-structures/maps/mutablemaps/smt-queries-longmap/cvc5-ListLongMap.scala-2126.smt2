; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35992 () Bool)

(assert start!35992)

(declare-fun res!201028 () Bool)

(declare-fun e!221231 () Bool)

(assert (=> start!35992 (=> (not res!201028) (not e!221231))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35992 (= res!201028 (validMask!0 mask!1943))))

(assert (=> start!35992 e!221231))

(assert (=> start!35992 true))

(declare-datatypes ((V!12147 0))(
  ( (V!12148 (val!4233 Int)) )
))
(declare-datatypes ((ValueCell!3845 0))(
  ( (ValueCellFull!3845 (v!6424 V!12147)) (EmptyCell!3845) )
))
(declare-datatypes ((array!20281 0))(
  ( (array!20282 (arr!9625 (Array (_ BitVec 32) ValueCell!3845)) (size!9977 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20281)

(declare-fun e!221232 () Bool)

(declare-fun array_inv!7078 (array!20281) Bool)

(assert (=> start!35992 (and (array_inv!7078 _values!1277) e!221232)))

(declare-datatypes ((array!20283 0))(
  ( (array!20284 (arr!9626 (Array (_ BitVec 32) (_ BitVec 64))) (size!9978 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20283)

(declare-fun array_inv!7079 (array!20283) Bool)

(assert (=> start!35992 (array_inv!7079 _keys!1541)))

(declare-fun b!361246 () Bool)

(assert (=> b!361246 (= e!221231 false)))

(declare-fun lt!166520 () Bool)

(declare-datatypes ((List!5532 0))(
  ( (Nil!5529) (Cons!5528 (h!6384 (_ BitVec 64)) (t!10690 List!5532)) )
))
(declare-fun arrayNoDuplicates!0 (array!20283 (_ BitVec 32) List!5532) Bool)

(assert (=> b!361246 (= lt!166520 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5529))))

(declare-fun b!361247 () Bool)

(declare-fun e!221234 () Bool)

(declare-fun tp_is_empty!8377 () Bool)

(assert (=> b!361247 (= e!221234 tp_is_empty!8377)))

(declare-fun mapIsEmpty!14091 () Bool)

(declare-fun mapRes!14091 () Bool)

(assert (=> mapIsEmpty!14091 mapRes!14091))

(declare-fun b!361248 () Bool)

(declare-fun res!201027 () Bool)

(assert (=> b!361248 (=> (not res!201027) (not e!221231))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361248 (= res!201027 (and (= (size!9977 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9978 _keys!1541) (size!9977 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361249 () Bool)

(declare-fun e!221235 () Bool)

(assert (=> b!361249 (= e!221235 tp_is_empty!8377)))

(declare-fun mapNonEmpty!14091 () Bool)

(declare-fun tp!28167 () Bool)

(assert (=> mapNonEmpty!14091 (= mapRes!14091 (and tp!28167 e!221234))))

(declare-fun mapRest!14091 () (Array (_ BitVec 32) ValueCell!3845))

(declare-fun mapValue!14091 () ValueCell!3845)

(declare-fun mapKey!14091 () (_ BitVec 32))

(assert (=> mapNonEmpty!14091 (= (arr!9625 _values!1277) (store mapRest!14091 mapKey!14091 mapValue!14091))))

(declare-fun b!361250 () Bool)

(assert (=> b!361250 (= e!221232 (and e!221235 mapRes!14091))))

(declare-fun condMapEmpty!14091 () Bool)

(declare-fun mapDefault!14091 () ValueCell!3845)

