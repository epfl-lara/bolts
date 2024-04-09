; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104680 () Bool)

(assert start!104680)

(declare-fun b!1247639 () Bool)

(declare-fun e!707889 () Bool)

(declare-fun e!707890 () Bool)

(declare-fun mapRes!48814 () Bool)

(assert (=> b!1247639 (= e!707889 (and e!707890 mapRes!48814))))

(declare-fun condMapEmpty!48814 () Bool)

(declare-datatypes ((V!47195 0))(
  ( (V!47196 (val!15749 Int)) )
))
(declare-datatypes ((ValueCell!14923 0))(
  ( (ValueCellFull!14923 (v!18445 V!47195)) (EmptyCell!14923) )
))
(declare-datatypes ((array!80417 0))(
  ( (array!80418 (arr!38773 (Array (_ BitVec 32) ValueCell!14923)) (size!39310 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80417)

(declare-fun mapDefault!48814 () ValueCell!14923)

