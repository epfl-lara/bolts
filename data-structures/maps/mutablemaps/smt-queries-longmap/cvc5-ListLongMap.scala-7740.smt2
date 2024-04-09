; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97220 () Bool)

(assert start!97220)

(declare-fun b!1105552 () Bool)

(declare-fun e!631007 () Bool)

(declare-fun e!631005 () Bool)

(assert (=> b!1105552 (= e!631007 e!631005)))

(declare-fun res!737782 () Bool)

(assert (=> b!1105552 (=> (not res!737782) (not e!631005))))

(declare-datatypes ((array!71702 0))(
  ( (array!71703 (arr!34500 (Array (_ BitVec 32) (_ BitVec 64))) (size!35037 (_ BitVec 32))) )
))
(declare-fun lt!495309 () array!71702)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71702 (_ BitVec 32)) Bool)

(assert (=> b!1105552 (= res!737782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495309 mask!1564))))

(declare-fun _keys!1208 () array!71702)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105552 (= lt!495309 (array!71703 (store (arr!34500 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35037 _keys!1208)))))

(declare-fun b!1105553 () Bool)

(declare-fun e!631002 () Bool)

(declare-fun e!631003 () Bool)

(declare-fun mapRes!42940 () Bool)

(assert (=> b!1105553 (= e!631002 (and e!631003 mapRes!42940))))

(declare-fun condMapEmpty!42940 () Bool)

(declare-datatypes ((V!41681 0))(
  ( (V!41682 (val!13764 Int)) )
))
(declare-datatypes ((ValueCell!12998 0))(
  ( (ValueCellFull!12998 (v!16398 V!41681)) (EmptyCell!12998) )
))
(declare-datatypes ((array!71704 0))(
  ( (array!71705 (arr!34501 (Array (_ BitVec 32) ValueCell!12998)) (size!35038 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71704)

(declare-fun mapDefault!42940 () ValueCell!12998)

