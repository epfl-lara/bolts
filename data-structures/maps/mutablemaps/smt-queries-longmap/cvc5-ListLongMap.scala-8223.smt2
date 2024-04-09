; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100282 () Bool)

(assert start!100282)

(declare-fun b!1195607 () Bool)

(declare-fun e!679420 () Bool)

(declare-fun e!679417 () Bool)

(declare-fun mapRes!47306 () Bool)

(assert (=> b!1195607 (= e!679420 (and e!679417 mapRes!47306))))

(declare-fun condMapEmpty!47306 () Bool)

(declare-datatypes ((V!45545 0))(
  ( (V!45546 (val!15213 Int)) )
))
(declare-datatypes ((ValueCell!14447 0))(
  ( (ValueCellFull!14447 (v!17852 V!45545)) (EmptyCell!14447) )
))
(declare-datatypes ((array!77390 0))(
  ( (array!77391 (arr!37338 (Array (_ BitVec 32) ValueCell!14447)) (size!37875 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77390)

(declare-fun mapDefault!47306 () ValueCell!14447)

